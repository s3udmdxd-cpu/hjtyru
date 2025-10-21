--[[
    Secure License Validation System
    Example implementation for protecting FiveM resources
]]

-- Server-side license validation
local LicenseSystem = {}

-- Configuration (store in server.cfg as convar in production)
LicenseSystem.Config = {
    APIEndpoint = GetConvar('license_api_endpoint', 'https://your-api.com'),
    ResourceName = GetCurrentResourceName(),
    CheckInterval = 3600000, -- 1 hour in milliseconds
    MaxRetries = 3,
}

-- Generate hardware fingerprint
function LicenseSystem.GetServerFingerprint()
    local data = {
        ip = GetConvar('sv_hostname', ''),
        port = GetConvar('sv_port', ''),
        maxclients = GetConvar('sv_maxclients', ''),
        resource = GetCurrentResourceName(),
    }

    local fingerprint = json.encode(data)
    return fingerprint
end

-- Validate license with remote server
function LicenseSystem.ValidateLicense(licenseKey)
    local promise = promise.new()

    local payload = json.encode({
        license = licenseKey,
        fingerprint = LicenseSystem.GetServerFingerprint(),
        resource = LicenseSystem.Config.ResourceName,
        version = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)
    })

    PerformHttpRequest(
        LicenseSystem.Config.APIEndpoint .. '/validate',
        function(statusCode, responseBody, headers)
            if statusCode == 200 then
                local response = json.decode(responseBody)
                if response and response.valid then
                    promise:resolve({
                        valid = true,
                        expires = response.expires,
                        features = response.features or {}
                    })
                else
                    promise:resolve({ valid = false, reason = 'Invalid license' })
                end
            else
                promise:resolve({
                    valid = false,
                    reason = 'API error: ' .. tostring(statusCode)
                })
            end
        end,
        'POST',
        payload,
        { ['Content-Type'] = 'application/json' }
    )

    return Citizen.Await(promise)
end

-- Shutdown resource if license is invalid
function LicenseSystem.Shutdown(reason)
    print('^1========================================^0')
    print('^1LICENSE VALIDATION FAILED^0')
    print('^1Reason: ' .. reason .. '^0')
    print('^1Resource will be stopped.^0')
    print('^1========================================^0')

    Wait(5000)
    StopResource(GetCurrentResourceName())
end

-- Initialize license system
function LicenseSystem.Initialize()
    local licenseKey = GetConvar('your_resource_license', '')

    if licenseKey == '' then
        LicenseSystem.Shutdown('No license key configured')
        return false
    end

    print('^3Validating license...^0')
    local result = LicenseSystem.ValidateLicense(licenseKey)

    if not result.valid then
        LicenseSystem.Shutdown(result.reason or 'Unknown error')
        return false
    end

    print('^2License validated successfully!^0')
    print('^2Expires: ' .. (result.expires or 'Never') .. '^0')

    -- Schedule periodic re-validation
    Citizen.CreateThread(function()
        while true do
            Wait(LicenseSystem.Config.CheckInterval)

            local recheck = LicenseSystem.ValidateLicense(licenseKey)
            if not recheck.valid then
                LicenseSystem.Shutdown('License no longer valid: ' .. (recheck.reason or 'Unknown'))
            end
        end
    end)

    return true
end

-- File integrity checker
local IntegrityChecker = {}

IntegrityChecker.FileHashes = {
    -- Pre-computed hashes of critical files
    -- Generate with: sha256sum filename
    ['server/main.lua'] = 'abc123...',
    ['client/main.lua'] = 'def456...',
}

function IntegrityChecker.ComputeHash(content)
    -- Simple hash function (use proper crypto in production)
    local hash = 0
    for i = 1, #content do
        hash = (hash * 31 + string.byte(content, i)) % 2147483647
    end
    return tostring(hash)
end

function IntegrityChecker.Verify()
    print('^3Checking file integrity...^0')

    for file, expectedHash in pairs(IntegrityChecker.FileHashes) do
        local content = LoadResourceFile(GetCurrentResourceName(), file)

        if not content then
            print('^1File missing: ' .. file .. '^0')
            return false
        end

        local actualHash = IntegrityChecker.ComputeHash(content)

        if actualHash ~= expectedHash then
            print('^1File tampered: ' .. file .. '^0')
            print('^1Expected: ' .. expectedHash .. '^0')
            print('^1Got: ' .. actualHash .. '^0')
            return false
        end
    end

    print('^2Integrity check passed!^0')
    return true
end

-- Anti-debug detection
local AntiDebug = {}

function AntiDebug.DetectDebugger()
    local checks = {
        -- Execution time check
        function()
            local start = GetGameTimer()
            local iterations = 1000000
            for i = 1, iterations do end
            local elapsed = GetGameTimer() - start

            -- If too slow, might be debugged
            return elapsed > 200
        end,

        -- Resource count check
        function()
            local resources = GetNumResources()
            -- Suspicious if too many resources
            return resources > 500
        end,

        -- Check for known debugging resources
        function()
            local debugResources = {
                'debugger',
                'console',
                'devtools'
            }

            for _, res in ipairs(debugResources) do
                if GetResourceState(res) == 'started' then
                    return true
                end
            end
            return false
        end
    }

    for i, check in ipairs(checks) do
        if check() then
            return true, 'Debug check #' .. i .. ' failed'
        end
    end

    return false, nil
end

function AntiDebug.StartMonitoring()
    Citizen.CreateThread(function()
        while true do
            Wait(60000) -- Check every minute

            local detected, reason = AntiDebug.DetectDebugger()
            if detected then
                print('^1Debugging detected: ' .. (reason or 'Unknown') .. '^0')
                -- Log this event to your API
                -- Optionally take action
            end
        end
    end)
end

-- Environment validator
local EnvironmentValidator = {}

function EnvironmentValidator.Validate()
    print('^3Validating environment...^0')

    -- Check required resources
    local requiredResources = {
        'ox_lib',
        'oxmysql',
    }

    for _, resource in ipairs(requiredResources) do
        if GetResourceState(resource) ~= 'started' then
            print('^1Required resource not started: ' .. resource .. '^0')
            return false
        end
    end

    -- Check server configuration
    local requiredConvars = {
        'sv_enforceGameBuild',
        'sv_scriptHookAllowed',
    }

    for _, convar in ipairs(requiredConvars) do
        local value = GetConvar(convar, nil)
        if not value then
            print('^3Warning: Convar not set: ' .. convar .. '^0')
        end
    end

    -- Check FiveM version
    local fxVersion = GetConvar('sv_fivemVersion', '0')
    print('^2FiveM Version: ' .. fxVersion .. '^0')

    print('^2Environment validation passed!^0')
    return true
end

-- Main initialization
Citizen.CreateThread(function()
    print('^3========================================^0')
    print('^3Initializing Secure Resource System^0')
    print('^3========================================^0')

    -- 1. Validate environment
    if not EnvironmentValidator.Validate() then
        LicenseSystem.Shutdown('Environment validation failed')
        return
    end

    -- 2. Check file integrity
    if not IntegrityChecker.Verify() then
        LicenseSystem.Shutdown('File integrity check failed')
        return
    end

    -- 3. Validate license
    if not LicenseSystem.Initialize() then
        return -- Already shut down by Initialize
    end

    -- 4. Start anti-debug monitoring
    AntiDebug.StartMonitoring()

    print('^2========================================^0')
    print('^2All security checks passed!^0')
    print('^2Resource started successfully.^0')
    print('^2========================================^0')
end)

-- Export functions for other scripts
exports('IsLicenseValid', function()
    return true -- Simplified, check actual license state
end)

exports('GetLicenseInfo', function()
    return {
        valid = true,
        expires = 'Never',
        features = {}
    }
end)
