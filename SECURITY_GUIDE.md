# FiveM Script Protection Security Guide

## Executive Summary

This guide analyzes FXAP encryption used in FiveM resources and provides recommendations for protecting your own scripts from similar attacks.

## FXAP Encryption Analysis

### What is FXAP?

FXAP (FXServer Asset Pack) is a basic encryption mechanism used by FiveM's Escrow system to protect Lua scripts in paid resources.

### How It Works

1. **Key Storage**: A `.fxap` file contains the encryption key
   - Format: `"FXAP" + version (4 bytes) + key data`
   - Key is stored in plaintext
   - Same key encrypts all files in the resource

2. **Encryption Method**: Simple XOR cipher
   ```
   encrypted_byte = original_byte XOR key[position % key_length]
   ```

3. **File Format**: Encrypted files have FXAP header
   - Header: `"FXAP" + version (4 bytes)`
   - Followed by XOR-encrypted content

## Security Weaknesses

### Critical Vulnerabilities

1. **Weak Encryption Algorithm**
   - XOR cipher is easily reversible
   - No modern cryptographic standards
   - Vulnerable to frequency analysis

2. **Key Management Flaws**
   - Key stored in plaintext on client
   - No key derivation function (KDF)
   - Single key for entire resource
   - No key rotation mechanism

3. **No Integrity Protection**
   - No HMAC or digital signatures
   - Files can be modified after decryption
   - No tamper detection

4. **Known-Plaintext Attacks**
   - Common Lua patterns are predictable
   - Easy to recover key from single file
   - No salt or IV (Initialization Vector)

5. **Distribution Security**
   - Key distributed to all clients
   - Any client can decrypt any file
   - No per-installation uniqueness

## How Attackers Break FXAP

### Method 1: Key Extraction
```python
# Simply read the .fxap file
with open('.fxap', 'rb') as f:
    key = f.read()[8:]  # Skip header
```

### Method 2: Known-Plaintext Attack
```python
# If you know part of the original code:
known_plain = b"local "
encrypted = encrypted_file[:6]
key = bytes([p ^ e for p, e in zip(known_plain, encrypted)])
```

### Method 3: Runtime Memory Dump
- Lua code exists in memory unencrypted
- Memory dumps reveal original source
- Debuggers can intercept execution

## How to Protect Your Scripts

### 1. Server-Side Security (CRITICAL)

**Move sensitive logic to server:**
```lua
-- BAD: Client-side anti-cheat
if playerSpeed > maxSpeed then
    BanPlayer()
end

-- GOOD: Server validates everything
TriggerServerEvent('validateMovement', coords, speed)
```

**Key principles:**
- Never trust client data
- All validation on server
- Client is UI layer only
- Encrypt server-client communication

### 2. Code Obfuscation

**Professional obfuscators:**
- **Luraph** - Strong protection, $50-200
- **IronBrew** - Good for FiveM, moderate cost
- **PSU Obfuscator** - Free, basic protection

**Obfuscation benefits:**
- Makes code hard to read
- Adds control flow flattening
- Constant encryption
- String obfuscation
- Anti-debug techniques

**Limitations:**
- Can be de-obfuscated given time
- Adds performance overhead
- Makes debugging harder
- Not a replacement for security

### 3. License System

**Implement proper licensing:**

```lua
-- Server-side license validation
local function ValidateLicense()
    local response = PerformHttpRequest(
        'https://your-api.com/validate',
        function(status, body)
            if status ~= 200 then
                print("^1License validation failed^0")
                ShutdownResource()
            end
        end,
        'POST',
        json.encode({
            license = Config.LicenseKey,
            ip = GetConvar('sv_hostname', ''),
            fingerprint = GetResourceFingerprint()
        }),
        {['Content-Type'] = 'application/json'}
    )
end
```

**License features:**
- Server-side validation
- IP whitelisting
- Hardware fingerprinting
- Expiration dates
- Usage limits
- Revocation capability

### 4. Integrity Checking

**Runtime integrity verification:**

```lua
-- Check if files have been modified
local function VerifyIntegrity()
    local expectedHashes = {
        ['client.lua'] = 'abc123...',
        ['server.lua'] = 'def456...'
    }

    for file, hash in pairs(expectedHashes) do
        local currentHash = GetResourceFileHash(file)
        if currentHash ~= hash then
            print("^1File tampering detected!^0")
            return false
        end
    end
    return true
end
```

### 5. Anti-Debug Techniques

**Detect debugging attempts:**

```lua
-- Check for common debugging tools
local function DetectDebuggers()
    -- Check execution time (debugger slows down)
    local start = GetGameTimer()
    for i = 1, 1000000 do end
    local elapsed = GetGameTimer() - start

    if elapsed > 100 then
        return true  -- Likely being debugged
    end

    return false
end
```

### 6. Environment Validation

**Verify running environment:**

```lua
-- Server-side environment checks
RegisterNetEvent('resource:validateEnvironment')
AddEventHandler('resource:validateEnvironment', function()
    local src = source

    -- Check for expected resources
    if GetResourceState('screenshot-basic') ~= 'started' then
        DropPlayer(src, 'Required resource missing')
    end

    -- Validate server configuration
    if GetConvar('sv_enforceGameBuild', '') == '' then
        print('^1Warning: Server misconfiguration detected^0')
    end
end)
```

### 7. Native Module Compilation

**Use native code for critical parts:**
- Compile sensitive logic to C++
- Create FiveM resource as native module
- Much harder to reverse engineer
- Better performance

**Tools:**
- FiveM Native SDK
- C++ compiler (MSVC, GCC)
- Requires advanced knowledge

## Recommended Protection Stack

### Tier 1: Minimal Protection
- FXAP encryption (baseline)
- Basic server-side validation
- Config obfuscation

### Tier 2: Standard Protection
- Professional obfuscator (Luraph/IronBrew)
- License validation system
- Server-side critical logic
- Integrity checking
- Anti-debug basics

### Tier 3: Maximum Protection
- Native module for core logic
- Advanced obfuscation
- Hardware fingerprinting
- Multi-layer license system
- Runtime integrity monitoring
- Encrypted network communication
- Memory protection techniques

## Security Best Practices

### Development Phase

1. **Assume client is hostile**
   - Never trust client input
   - Validate everything server-side
   - Use secure defaults

2. **Minimize client logic**
   - Only UI and display code
   - All calculations on server
   - No sensitive data on client

3. **Use environment variables**
   - Never hardcode API keys
   - Use server convars
   - Separate prod/dev configs

### Deployment Phase

1. **Secure your API endpoints**
   - Rate limiting
   - Authentication tokens
   - IP whitelisting
   - HTTPS only

2. **Monitor for breaches**
   - Log validation failures
   - Track license violations
   - Alert on suspicious activity

3. **Regular updates**
   - Rotate encryption keys
   - Update obfuscation
   - Patch vulnerabilities

### Response Plan

1. **If your script is leaked:**
   - Revoke compromised licenses
   - Update encryption immediately
   - Add new protection layers
   - Notify legitimate customers

2. **Legal protection:**
   - Copyright your code
   - DMCA takedowns for leaks
   - Terms of Service enforcement
   - Legal action if necessary

## Tools & Resources

### Obfuscation
- Luraph: https://luraph.com
- IronBrew: https://ironbrew.cc
- PSU: Free, GitHub

### License Systems
- FiveManage: https://fivemanage.com
- Custom API with JWT
- Database-backed validation

### Testing
- Use VPN to test IP checks
- VM for hardware fingerprint tests
- Mock leaked scenarios

## Conclusion

FXAP encryption alone is **not sufficient** protection. A defense-in-depth approach combining:
- Server-side logic
- Professional obfuscation
- License validation
- Integrity checking
- Runtime protection

...provides the best security for FiveM resources.

**Remember**: No protection is unbreakable, but you can make it expensive and time-consuming enough to deter most attackers.

---

*This guide is for educational and defensive security purposes only.*
