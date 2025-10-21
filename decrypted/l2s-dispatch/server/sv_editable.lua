local QBCore = exports[Shared.Settings.FrameworkFolder]:GetCoreObject()



-- Auto integration with pma-voice
function GetRadioChannel(src)
    local state = Player(src).state
    local channel = state["radioChannel"]
    return channel
end

RegisterServerEvent('pma-voice:setPlayerRadio')
AddEventHandler('pma-voice:setPlayerRadio', function(channel)
    local src = source
    SetChannel(src, channel)
end)

------- Framework functions
function hasBodyCam(src)
    local Hasitem = false
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then 
        if Player.Functions.GetItemByName(Shared.Settings.BodyCam.Item) then
            return true
        end
    end
    return false
end

function Notify(src, msg, type)
    TriggerClientEvent('QBCore:Notify', src, msg, type)
end

function ToggleDuty(src, boolean)
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.SetJobDuty(boolean)
    TriggerClientEvent(Shared.Settings.SetDuty, src, boolean)
end

function GetDuty(src)
    local Player = QBCore.Functions.GetPlayer(src)
    return Player.PlayerData.job.onduty 
end

function isVehicleOwned(plate)
    local result = MySQL.query.await('SELECT '..Shared.Settings.SQLTables.VehicleColumn..' FROM '..Shared.Settings.SQLTables.VehicleTable..' WHERE '..Shared.Settings.SQLTables.PlateColumn..' = ?', { plate })
    if result[1] then
        if result[1] then
            return true, result[1].vehicle
        end
    end
    return false
end

function  GetVehicleLable(vehicle)
    if QBCore.Shared.Vehicles[vehicle] then
        return QBCore.Shared.Vehicles[vehicle].name or vehicle
    else
        return vehicle
    end
end

function ServerChat(src, msg)
    TriggerClientEvent('chatMessage', src, "Call Reply", "info", msg)
end