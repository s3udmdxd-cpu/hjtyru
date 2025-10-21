local QBCore = exports[Shared.Settings.FrameworkFolder]:GetCoreObject()


-- << Inventory Customization >> 

function HasItem(item)
    if GetResourceState("ox_inventory") == "started" then
        return (exports.ox_inventory:Search("count", item) or 0) > 0
    elseif GetResourceState("qs-inventory") == "started"  then
        return exports["qs-inventory"]:Search(item) > 0
    else
        return QBCore.Functions.HasItem(item)
    end
end

function ToggleInventory(open)
    if open then

        if GetResourceState("ox_inventory") == "started" then
            LocalPlayer.state:set("inv_busy", false, true)
        elseif GetResourceState("qs-inventory") == "started"  then
            exports['qs-inventory']:setInventoryDisabled(false)
        else
            LocalPlayer.state:set("inv_busy", false, true)
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('canUseInventoryAndHotbar:toggle', true)
        end
    else
        if GetResourceState("ox_inventory") == "started" then
            LocalPlayer.state:set("inv_busy", true, true)
        elseif GetResourceState("qs-inventory") == "started"  then
            exports['qs-inventory']:setInventoryDisabled(true)
        else
            LocalPlayer.state:set("inv_busy", true, true)
            TriggerEvent('inventory:client:busy:status', true)
            TriggerEvent('canUseInventoryAndHotbar:toggle', false)
        end

    end
end
