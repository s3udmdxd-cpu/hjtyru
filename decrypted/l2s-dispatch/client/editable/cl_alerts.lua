

local function StoreRobbery()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('StoreRobbery_Title'),
        message = Lang('StoreRobbery_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 3,
        sound = 2,
        street = playerData.street,
        blip = {
            sprite = 52, 
            colour = 1,
            scale = 1.0, 
            text = '10-7 - Store Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-person', text = playerData.sex}, 
            {icon = 'fa-solid fa-video', text = GetNearestCamera(playerData.coords.x, playerData.coords.y, 10)}
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('StoreRobbery', StoreRobbery)

local function HouseRobbery()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('HouseRobbery_Title'),
        message = Lang('HouseRobbery_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 3,
        sound = 2,
        street = playerData.street,
        blip = {
            sprite = 418, 
            colour = 1,
            scale = 1.0, 
            text = '10-6 - House Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-person', text = playerData.sex}, 
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('HouseRobbery', HouseRobbery)

local function clicklovers()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('clicklovers_Title'),
        message = Lang('clicklovers_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 2,
        sound = 3,
        street = playerData.street,
        blip = {
            sprite = 67, 
            colour = 1,
            scale = 1.0, 
            text = '10-8 - clicklovers Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-person', text = playerData.sex}, 
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('clicklovers', clicklovers)

local function FleecaRobbery()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('FleecaRobbery_Title'),
        message = Lang('FleecaRobbery_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 2,
        sound = 3,
        street = playerData.street,
        blip = {
            sprite = 88, 
            colour = 1,
            scale = 1.0, 
            text = '10-8 - Fleeca Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-video', text = GetNearestCamera(playerData.coords.x, playerData.coords.y, 10)}, 
            {icon = 'fa-solid fa-person', text = playerData.sex}, 
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('FleecaRobbery', FleecaRobbery)

local function BobcatRobbery()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('BobcatRobbery_Title'),
        message = Lang('BobcatRobbery_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 2,
        sound = 3,
        street = playerData.street,
        blip = {
            sprite = 291, 
            colour = 1,
            scale = 1.0, 
            text = '10-9 - Bobcat Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-video', text = GetNearestCamera(playerData.coords.x, playerData.coords.y, 20)}, 
            {icon = 'fa-solid fa-person', text = playerData.sex}, 
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('BobcatRobbery', BobcatRobbery)

local function VangelicoRobbery()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('VangelicoRobbery_Title'),
        message = Lang('VangelicoRobbery_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 2,
        sound = 3,
        street = playerData.street,
        blip = {
            sprite = 439, 
            colour = 1,
            scale = 1.0, 
            text = '10-10 - Vangelico Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-video', text = 10}, 
            {icon = 'fa-solid fa-person', text = playerData.sex}, 
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('VangelicoRobbery', VangelicoRobbery)

local function PaletoRobbery()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('PaletoRobbery_Title'),
        message = Lang('PaletoRobbery_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 1,
        sound = 3,
        street = playerData.street,
        blip = {
            sprite = 267, 
            colour = 1,
            scale = 1.0, 
            text = '10-11 - Paleto Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-video', text = 2}, 
            {icon = 'fa-solid fa-person', text = playerData.sex}, 
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('PaletoRobbery', PaletoRobbery)

local function UnionRobbery()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('UnionRobbery_Title'),
        message = Lang('UnionRobbery_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 1,
        sound = 3,
        street = playerData.street,
        blip = {
            sprite = 486, 
            colour = 1,
            scale = 1.0, 
            text = '10-12 - Union Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-video', text = 3}, 
            { icon = 'fa-solid fa-person', text = playerData.sex}, 
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('UnionRobbery', UnionRobbery)

local function PacificRobbery()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    local NotifyData = {
        departments = {'POLICE'}, 
        title = Lang('PacificRobbery_Title'),
        message = Lang('PacificRobbery_Message', {gender = playerData.sex, street = playerData.street}),
        coords = vec2(playerData.coords.x, playerData.coords.y),
        priority = 1,
        sound = 3,
        street = playerData.street,
        blip = {
            sprite = 487, 
            colour = 1,
            scale = 1.0, 
            text = '10-13 - Pacific Robbery',
        },
        info = { 
            {icon = 'fa-solid fa-video', text = 1}, 
            {icon = 'fa-solid fa-person', text = playerData.sex}, 
        },
    }
    TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
end
exports('PacificRobbery', PacificRobbery)

local function Shooting()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    if playerData.isInVehicle then
        local vehicleData = exports['l2s-dispatch']:GetVehicleData(playerData.GetVehicleIn)
        print(json.encode(vehicleData))
        local NotifyData = {
            departments = Shared.Dispatch.DefaultAlerts['Shooting'].Departments, 
            title = Lang('Shooting_Vehicle_Title'),
            message = Lang('Shooting_Vehicle_Message', {gender = playerData.sex, street = playerData.street, gun = playerData.gun, car = vehicleData.name, plate = vehicleData.plate, color = vehicleData.color}),
            coords = vec2(playerData.coords.x, playerData.coords.y),
            priority = 3,
            sound = 3,
            street = playerData.street,
            blip = {
                sprite = 229, 
                colour = 1,
                scale = 1.0, 
                text = '10-31V - Shots Fired',
            },
            info = { 
                {icon = 'gun', text = playerData.gun}, 
                {icon = 'car', text = vehicleData.name}, 
                {icon = 'digital-tachograph', text = vehicleData.plate}, 
                {icon = 'spray-can', text = vehicleData.color}, 
            },
        }
        TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
    else
        local NotifyData = {
            departments = Shared.Dispatch.DefaultAlerts['Shooting'].Departments, 
            title = Lang('Shooting_Title'),
            message = Lang('Shooting_Message', {gender = playerData.sex, street = playerData.street, gun = playerData.gun}),
            coords = vec2(playerData.coords.x, playerData.coords.y),
            priority = 3,
            sound = 3,
            street = playerData.street,
            blip = {
                sprite = 487, 
                colour = 1,
                scale = 1.0, 
                text = '10-31 - Shooting Fire',
            },
            info = { 
                { icon = 'gun', text = playerData.gun}, 
                { icon = 'fa-solid fa-person', text = playerData.sex}, 
            },
        }
        TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
    end
end
exports('Shooting', Shooting)


local function VehicleBurglary()
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    if playerData.isInVehicle then
        local vehicleData = exports['l2s-dispatch']:GetVehicleData(playerData.GetVehicleIn)
        local NotifyData = {
            departments = {'POLICE'}, 
            title = Lang('Vehicle_Theft_Title'),
            message = Lang('Vehicle_Theft_Message', {gender = playerData.sex, street = playerData.street, car = vehicleData.name, plate = vehicleData.plate, color = vehicleData.color}),
            coords = vec2(playerData.coords.x, playerData.coords.y),
            priority = 3,
            sound = 1,
            street = playerData.street,
            blip = {
                sprite = 229, 
                colour = 1,
                scale = 1.0, 
                text = '10-31 - Shots Fired',
            },
            info = { 
                {icon = 'fa-solid fa-car', text = vehicleData.name}, 
                {icon = 'fa-solid fa-digital-tachograph', text = vehicleData.plate}, 
                {icon = 'fa-solid fa-spray-can', text = vehicleData.color}, 
            },
        }
        TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
    else
        local NotifyData = {
            departments = {'POLICE'}, 
            title = Lang('Vehicle_Theft_Title'),
            message = Lang('Vehicle_Theft_Message_OutCar', {gender = playerData.sex, street = playerData.street}),
            coords = vec2(playerData.coords.x, playerData.coords.y),
            priority = 3,
            sound = 1,
            street = playerData.street,
            blip = {
                sprite = 225, 
                colour = 1,
                scale = 1.0, 
                text = '10-31 - Vehicle Theft',
            },
            info = { 
                {icon = 'fa-solid fa-person', text = playerData.sex}, 
            },
        }
        TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
    end
end
exports('VehicleBurglary', VehicleBurglary)




local function Panic(hub)
    local playerData = exports['l2s-dispatch']:GetPlayerData()
    if hub then
        local NotifyData = {
            departments = {hub}, 
            title = Lang('Panic_Title') ,
            message = Lang('Panic_Message', {name = playerData.name, street = playerData.street}),
            coords = vec2(playerData.coords.x, playerData.coords.y),
            priority = 2,
            sound = 3,
            street = playerData.street,
            blip = {
                sprite = 305, 
                colour = 1,
                scale = 1.0, 
                text = 'Panic',
            },
            info = { 
                {icon = 'fa-solid fa-person', text = playerData.name},
            },
        }
        TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
    else
        print('Department error')
    end
end

RegisterNetEvent('l2s-dispatch:client:PanicButton', function(hub)
    Panic(hub)
end)

exports('Panic', Panic)



if Shared.Dispatch.DefaultAlerts['Shooting'].Enable then
    AddEventHandler('CEventGunShot', function(witnesses, ped)
        if IsPedCurrentWeaponSilenced(ped) then return end
        if not BlacklistedWeapon(ped) and not IsInWhitelistedLocation(ped) then else return end
        WaitTimer('Shooting', false, false, function()
            if PlayerPedId() ~= ped then return end
            if witnesses and not isPedAWitness(witnesses, ped) then return end
            exports['l2s-dispatch']:Shooting()
        end)
    end)
end
