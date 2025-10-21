local QBCore = exports[Shared.Settings.FrameworkFolder]:GetCoreObject()

local VehicleColors = {
    ['0'] = "Metallic Black",
    ['1'] = "Metallic Graphite Black",
    ['2'] = "Metallic Black Steel",
    ['3'] = "Metallic Dark Silver",
    ['4'] = "Metallic Silver",
    ['5'] = "Metallic Blue Silver",
    ['6'] = "Metallic Steel Gray",
    ['7'] = "Metallic Shadow Silver",
    ['8'] = "Metallic Stone Silver",
    ['9'] = "Metallic Midnight Silver",
    ['10'] = "Metallic Gun Metal",
    ['11'] = "Metallic Anthracite Grey",
    ['12'] = "Matte Black",
    ['13'] = "Matte Gray",
    ['14'] = "Matte Light Grey",
    ['15'] = "Util Black",
    ['16'] = "Util Black Poly",
    ['17'] = "Util Dark silver",
    ['18'] = "Util Silver",
    ['19'] = "Util Gun Metal",
    ['20'] = "Util Shadow Silver",
    ['21'] = "Worn Black",
    ['22'] = "Worn Graphite",
    ['23'] = "Worn Silver Grey",
    ['24'] = "Worn Silver",
    ['25'] = "Worn Blue Silver",
    ['26'] = "Worn Shadow Silver",
    ['27'] = "Metallic Red",
    ['28'] = "Metallic Torino Red",
    ['29'] = "Metallic Formula Red",
    ['30'] = "Metallic Blaze Red",
    ['31'] = "Metallic Graceful Red",
    ['32'] = "Metallic Garnet Red",
    ['33'] = "Metallic Desert Red",
    ['34'] = "Metallic Cabernet Red",
    ['35'] = "Metallic Candy Red",
    ['36'] = "Metallic Sunrise Orange",
    ['37'] = "Metallic Classic Gold",
    ['38'] = "Metallic Orange",
    ['39'] = "Matte Red",
    ['40'] = "Matte Dark Red",
    ['41'] = "Matte Orange",
    ['42'] = "Matte Yellow",
    ['43'] = "Util Red",
    ['44'] = "Util Bright Red",
    ['45'] = "Util Garnet Red",
    ['46'] = "Worn Red",
    ['47'] = "Worn Golden Red",
    ['48'] = "Worn Dark Red",
    ['49'] = "Metallic Dark Green",
    ['50'] = "Metallic Racing Green",
    ['51'] = "Metallic Sea Green",
    ['52'] = "Metallic Olive Green",
    ['53'] = "Metallic Green",
    ['54'] = "Metallic Gasoline Blue Green",
    ['55'] = "Matte Lime Green",
    ['56'] = "Util Dark Green",
    ['57'] = "Util Green",
    ['58'] = "Worn Dark Green",
    ['59'] = "Worn Green",
    ['60'] = "Worn Sea Wash",
    ['61'] = "Metallic Midnight Blue",
    ['62'] = "Metallic Dark Blue",
    ['63'] = "Metallic Saxony Blue",
    ['64'] = "Metallic Blue",
    ['65'] = "Metallic Mariner Blue",
    ['66'] = "Metallic Harbor Blue",
    ['67'] = "Metallic Diamond Blue",
    ['68'] = "Metallic Surf Blue",
    ['69'] = "Metallic Nautical Blue",
    ['70'] = "Metallic Bright Blue",
    ['71'] = "Metallic Purple Blue",
    ['72'] = "Metallic Spinnaker Blue",
    ['73'] = "Metallic Ultra Blue",
    ['74'] = "Metallic Bright Blue",
    ['75'] = "Util Dark Blue",
    ['76'] = "Util Midnight Blue",
    ['77'] = "Util Blue",
    ['78'] = "Util Sea Foam Blue",
    ['79'] = "Uil Lightning blue",
    ['80'] = "Util Maui Blue Poly",
    ['81'] = "Util Bright Blue",
    ['82'] = "Matte Dark Blue",
    ['83'] = "Matte Blue",
    ['84'] = "Matte Midnight Blue",
    ['85'] = "Worn Dark blue",
    ['86'] = "Worn Blue",
    ['87'] = "Worn Light blue",
    ['88'] = "Metallic Taxi Yellow",
    ['89'] = "Metallic Race Yellow",
    ['90'] = "Metallic Bronze",
    ['91'] = "Metallic Yellow Bird",
    ['92'] = "Metallic Lime",
    ['93'] = "Metallic Champagne",
    ['94'] = "Metallic Pueblo Beige",
    ['95'] = "Metallic Dark Ivory",
    ['96'] = "Metallic Choco Brown",
    ['97'] = "Metallic Golden Brown",
    ['98'] = "Metallic Light Brown",
    ['99'] = "Metallic Straw Beige",
    ['100'] = "Metallic Moss Brown",
    ['101'] = "Metallic Biston Brown",
    ['102'] = "Metallic Beechwood",
    ['103'] = "Metallic Dark Beechwood",
    ['104'] = "Metallic Choco Orange",
    ['105'] = "Metallic Beach Sand",
    ['106'] = "Metallic Sun Bleeched Sand",
    ['107'] = "Metallic Cream",
    ['108'] = "Util Brown",
    ['109'] = "Util Medium Brown",
    ['110'] = "Util Light Brown",
    ['111'] = "Metallic White",
    ['112'] = "Metallic Frost White",
    ['113'] = "Worn Honey Beige",
    ['114'] = "Worn Brown",
    ['115'] = "Worn Dark Brown",
    ['116'] = "Worn straw beige",
    ['117'] = "Brushed Steel",
    ['118'] = "Brushed Black Steel",
    ['119'] = "Brushed Aluminium",
    ['120'] = "Chrome",
    ['121'] = "Worn Off White",
    ['122'] = "Util Off White",
    ['123'] = "Worn Orange",
    ['124'] = "Worn Light Orange",
    ['125'] = "Metallic Securicor Green",
    ['126'] = "Worn Taxi Yellow",
    ['127'] = "Police Car Blue",
    ['128'] = "Matte Green",
    ['129'] = "Matte Brown",
    ['130'] = "Worn Orange",
    ['131'] = "Matte White",
    ['132'] = "Worn White",
    ['133'] = "Worn Olive Army Green",
    ['134'] = "Pure White",
    ['135'] = "Hot Pink",
    ['136'] = "Salmon pink",
    ['137'] = "Metallic Vermillion Pink",
    ['138'] = "Orange",
    ['139'] = "Green",
    ['140'] = "Blue",
    ['141'] = "Mettalic Black Blue",
    ['142'] = "Metallic Black Purple",
    ['143'] = "Metallic Black Red",
    ['144'] = "hunter green",
    ['145'] = "Metallic Purple",
    ['146'] = "Metallic Dark Blue",
    ['147'] = "Black",
    ['148'] = "Matte Purple",
    ['149'] = "Matte Dark Purple",
    ['150'] = "Metallic Lava Red",
    ['151'] = "Matte Forest Green",
    ['152'] = "Matte Olive Drab",
    ['153'] = "Matte Desert Brown",
    ['154'] = "Matte Desert Tan",
    ['155'] = "Matte Foilage Green",
    ['156'] = "Default Alloy Color",
    ['157'] = "Epsilon Blue",
    ['158'] = "Pure Gold",
    ['159'] = "Brushed Gold",
    ['160'] = "MP100"
}

local Guns = {
    [584646201]   = "AP-Pistol",
    [453432689]   = "Pistol",
    [3219281620]  = "Pistol MK2",
    [1593441988]  = "Combat Pistol",
    [-1716589765] = "Heavy Pistol",
    [-1076751822] = "SNS-Pistol",
    [-771403250]  = "Desert Eagle",
    [137902532]   = "Vintage Pistol",
    [-598887786]  = "Marksman Pistol",
    [-1045183535] = "Revolver",
    [911657153]   = "Taser",
    [324215364]   = "Micro-SMG",
    [-619010992]  = "Machine-Pistol",
    [736523883]   = "SMG",
    [2024373456]  = "SMG MK2",
    [-270015777]  = "Assault SMG",
    [171789620]   = "Combat PDW",
    [-1660422300] = "Combat MG",
    [3686625920]  = "Combat MG MK2",
    [1627465347]  = "Gusenberg",
    [-1121678507] = "Mini SMG",
    [-1074790547] = "Assaultrifle",
    [961495388]   = "Assaultrifle MK2",
    [-2084633992] = "Carbinerifle",
    [4208062921]  = "Carbinerifle MK2",
    [-1357824103] = "Advancedrifle",
    [-1063057011] = "Specialcarbine",
    [2132975508]  = "Bulluprifle",
    [1649403952]  = "Compactrifle",
    [100416529]   = "Sniperrifle",
    [205991906]   = "Heavy Sniper",
    [177293209]   = "Heavy Sniper MK2",
    [-952879014]  = "Marksmanrifle",
    [487013001]   = "Pumpshotgun",
    [2017895192]  = "Sawnoff Shotgun",
    [-1654528753] = "Bullupshotgun",
    [-494615257]  = "Assaultshotgun",
    [-1466123874] = "Musket",
    [984333226]   = "Heavyshotgun",
    [-275439685]  = "Doublebarrel Shotgun",
    [317205821]   = "Autoshotgun",
    [-1568386805] = "GRENADE LAUNCHER",
    [-1312131151] = " RPG",
    [125959754]   = "Compactlauncher"
}


local function GetPlayerData()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    return {
        sex = GetPlayerGender(),
        gun = GetWeaponName(ped),
        ped = ped,
        coords = vec2(math.floor(coords.x), math.floor(coords.y)),
        name = GetPlayerName(),
        GetVehicleIn = GetVehiclePedIsIn(ped, false),
        isInVehicle = IsPedInAnyVehicle(ped),
        source = tonumber(GetPlayerServerId(PlayerId())),
        street = GetStreetAndZone(coords.x, coords.y)
    }
end


local function GetVehicleData(vehicle)
    local data = {}
    local CarClass = {
        [0] = 'Compat',
        [1] = 'Sedan',
        [2] = 'SUV',
        [3] = 'Coupe',
        [4] = 'Muscle',
        [5] = 'Sports Classic',
        [6] = 'Sports',
        [7] = 'Super',
        [8] = 'Motorcycle',
        [9] = 'Offroad',
        [10] = 'Industrial',
        [11] = 'Utility',
        [12] = 'Van',
        [17] = 'Service',
        [19] = 'Military',
        [20] = 'Truck',
    }
    data.name = GetVehicleName(vehicle)
    data.plate = GetPlate(vehicle)
    data.class = CarClass[GetVehicleClass(vehicle)] or "Unknown"
    data.color = vehicleColor(vehicle)
    data.id = NetworkGetNetworkIdFromEntity(vehicle)
    return data
end

function GetVehicleName(entity)
    local model = GetEntityModel(entity)
    local spawnCode = string.lower(GetDisplayNameFromVehicleModel(model))
    
    if QBCore.Shared.Vehicles[spawnCode] then
        return QBCore.Shared.Vehicles[spawnCode].name 
    else
        local displayName = GetDisplayNameFromVehicleModel(model)
        local labelText = GetLabelText(displayName)
        if labelText == "NULL" or labelText == "" then
            return displayName
        else
            return labelText 
        end
    end
end


function OnCamOpen(bool)
    TriggerEvent('l2s-hud:toggleHud', not bool)
    if bool then
        DisplayRadar(false)
    else
        DisplayRadar(true)
    end
end

function Notify(msg, type)
    QBCore.Functions.Notify(msg, type)
end

function GetPlayerGender()
    local gender = Lang('Male')
    if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then
        gender = Lang('Female')
    end
    return gender
end

function GetPlayerName()
    return QBCore.Functions.GetPlayerData().charinfo.firstname ..' '..QBCore.Functions.GetPlayerData().charinfo.lastname
end

function BlacklistedWeapon(ped)
    for k, v in pairs (Shared.Dispatch.DefaultAlerts['Shooting'].WhiteListGuns) do
        local weaponHash = joaat(v)
        if GetSelectedPedWeapon(ped) == weaponHash then
            return true 
        end
    end
    return false
end

function IsInWhitelistedLocation(ped)
    local pedCoords = GetEntityCoords(ped)
    for k, v in pairs (Shared.Dispatch.DefaultAlerts['Shooting'].WhiteListLocations) do
        local distance = #(pedCoords - v.coords)
        if distance <= v.radius then
            return true 
        end
    end
    return false 
end



function GetClosestVehicle()
    local ped = PlayerPedId()
    local vehicles = GetGamePool('CVehicle')
    local closestDistance = -1
    local closestVehicle = -1
    local coords = GetEntityCoords(ped)

    for i = 1, #vehicles, 1 do
        local vehicleCoords = GetEntityCoords(vehicles[i])
        local distance = #(vehicleCoords - coords)

        if closestDistance == -1 or closestDistance > distance then
            closestVehicle = vehicles[i]
            closestDistance = distance
        end
    end
    return closestVehicle, closestDistance
end



function vehicleColor(vehicle)
    local primaryColor, secondaryColor = GetVehicleColours(vehicle)
    local colorName1 = VehicleColors[tostring(primaryColor)]
    local colorName2 = VehicleColors[tostring(secondaryColor)]

    if colorName1 and colorName2 then
        return colorName1
    elseif colorName1 then
        return colorName1
    elseif colorName2 then
        return colorName2
    else
        return "Unknown"
    end
end


function GetWeaponName(ped)
    local currentWeapon = GetSelectedPedWeapon(ped)
    return Guns[currentWeapon] or "Unknown"
end


function GetPlate(vehicle)
    return QBCore.Functions.GetPlate(vehicle) 
end

function GetStreetAndZone(x,y)
    local s1, s2 = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, x,y, 30, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
    local street1 = GetStreetNameFromHashKey(s1)
    local street2 = GetStreetNameFromHashKey(s2)
    local zone = GetLabelText(GetNameOfZone(x,y, 30))
    local street = street1 .. ", " .. zone
    return street1, zone
end


local tabletObj = nil
local tablet = false
local tabletDict = "amb@code_human_in_bus_passenger_idles@female@tablet@base"
local tabletAnim = "base"
local tabletProp = `prop_cs_l2s_tablet`
local tabletBone = 60309
local tabletOffset = vector3(0.03, 0.002, -0.0)
local tabletRot = vector3(180.0, 160.0, 180.0)

function ToggleTablet(toggle)
    local playerPed = PlayerPedId()
    local function CleanupTablet()
        if DoesEntityExist(tabletObj) then
            DetachEntity(tabletObj, true, false)
            DeleteEntity(tabletObj)
            tabletObj = nil
        end
        ClearPedSecondaryTask(playerPed)
    end

    if toggle and not tablet then
        tablet = true
        Citizen.CreateThread(function()
            RequestAnimDict(tabletDict)
            while not HasAnimDictLoaded(tabletDict) do
                Citizen.Wait(150)
            end

            RequestModel(tabletProp)
            while not HasModelLoaded(tabletProp) do
                Citizen.Wait(150)
            end

            local tabletBoneIndex = GetPedBoneIndex(playerPed, tabletBone)
            tabletObj = CreateObject(tabletProp, 0.0, 0.0, 0.0, true, true, false)
            SetCurrentPedWeapon(playerPed, `weapon_unarmed`, true)
            AttachEntityToEntity(tabletObj, playerPed, tabletBoneIndex, tabletOffset.x, tabletOffset.y, tabletOffset.z, tabletRot.x, tabletRot.y, tabletRot.z, true, false, false, false, 2, true)
            SetModelAsNoLongerNeeded(tabletProp)

            while tablet do
                Citizen.Wait(3)
                -- Play animation if not playing
                if not IsEntityPlayingAnim(playerPed, tabletDict, tabletAnim, 3) then
                    TaskPlayAnim(playerPed, tabletDict, tabletAnim, 3.0, 3.0, -1, 49, 0, 0, 0, 0)
                end

                -- Disable combat controls
                DisableControlAction(0, 24, true) -- Disable attack
                DisableControlAction(0, 25, true) -- Disable aim
                DisableControlAction(0, 140, true) -- Disable melee attack
                DisableControlAction(0, 141, true) -- Disable alternate melee attack
                DisableControlAction(0, 142, true) -- Disable alternate melee attack 2
                DisableControlAction(0, 257, true) -- Disable melee attack while aiming
            end

            CleanupTablet()
        end)
    elseif not toggle and tablet then
        tablet = false
        CleanupTablet()
    end
end


function SetDispatchWayPoint(x,y)
    SetNewWaypoint(x,y)
    SendNUIMessage({ 
        action = 'RefreshWayPoint',
        x = x,
        y = y,
    })
end

AddEventHandler('onResourceStop', function(resourceName) 
    if GetCurrentResourceName() == resourceName then
        -- remove tablet object
        if tabletObj and tablet == true then
            local playerPed = PlayerPedId()
            ClearPedSecondaryTask(playerPed)
            DetachEntity(tabletObj, true, false)
            DeleteEntity(tabletObj)
        end
    end 
end)



exports('GetPlayerData', GetPlayerData)
exports('GetVehicleData', GetVehicleData)