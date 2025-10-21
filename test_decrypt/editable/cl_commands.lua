local QBCore = exports[Shared.Settings.FrameworkFolder]:GetCoreObject()

Citizen.CreateThread(function()
    if Shared.Settings.Commands.OpenList then
        RegisterCommand(Shared.Settings.Commands.OpenList, function()
            exports['l2s-dispatch']:ToggleList()
        end)
        TriggerEvent('chat:addSuggestion', '/'..Shared.Settings.Commands.OpenList, Lang('OpenList_Command_Desc')) 
    end
    
    if Shared.Settings.Commands.OpenDashboard then
        RegisterCommand(Shared.Settings.Commands.OpenDashboard, function()
            exports['l2s-dispatch']:ToggleDashboard()
        end)
        TriggerEvent('chat:addSuggestion', '/'..Shared.Settings.Commands.OpenDashboard, Lang('OpenDashboard_Command_Desc')) 
    end

    RegisterKeyMapping('togglemouse', Lang('NUIKey_Keybind_Desc'), 'keyboard', Shared.Settings.Keybinds.NUIKey)
    RegisterKeyMapping('respond_call', Lang('Respond_Keybind_Desc'), 'keyboard', Shared.Settings.Keybinds.Respond)
    RegisterKeyMapping('next_call', Lang('Next_Keybind_Desc'), 'keyboard', Shared.Settings.Keybinds.Next)
    RegisterKeyMapping('previous_call', Lang('Previous_Keybind_Desc'), 'keyboard', Shared.Settings.Keybinds.Previous)




    

    if Shared.Settings.Commands.OpenDashboard then
        if Shared.Settings.Keybinds.Dashboard then
            RegisterKeyMapping(Shared.Settings.Commands.OpenDashboard, Lang('OpenDashboard_Keybind_Desc'), 'keyboard', Shared.Settings.Keybinds.Dashboard)
        end
    end

    if Shared.Dispatch.Panic.Command ~= false then
        TriggerEvent('chat:addSuggestion', '/'..Shared.Dispatch.Panic.Command, Shared.Dispatch.Panic.Description) 
        RegisterCommand(Shared.Dispatch.Panic.Command, function(row, args)
            local PlayerJob = QBCore.Functions.GetPlayerData().job.name
            local Access = exports['l2s-dispatch']:CheckAccess(PlayerJob)
            local sent = false
            if  Access then
                for k, v in pairs(Shared.Dispatch.Panic.Departments) do
                    if Access == v then
                        exports['l2s-dispatch']:Panic(Access)
                        sent = true
                        break                       
                    end
                end
                if sent == false then
                    Notify(Lang('NoAccess'), 'error') 
                end
            else
                Notify(Lang('NoAccess'), 'error') 
            end
        end)
    end


    for k, v in pairs(Shared.Dispatch.CallCommands.Calls) do
        if v.Enable then
            TriggerEvent('chat:addSuggestion', '/'..v.Command, v.Description) 
            RegisterCommand(v.Command, function(row, args)
                local message = table.concat(args, " ") 
                if #message > 0 then
                    WaitTimer(v.Command, Shared.Dispatch.CallCommands.TimeOut, Lang('Call_Spamming_Error'), function()
                        if v.anonymous == false then
                            local playerData = exports['l2s-dispatch']:GetPlayerData()
                            local message = table.concat(args, " ") 
                            local NotifyData = {
                                departments = v.Departments, 
                                title = v.Title ,
                                message = Lang('Calls_Message', {msg = message, street = playerData.street, name = playerData.name}),
                                coords = vec2(math.floor(playerData.coords.x), math.floor(playerData.coords.y)),
                                priority = 3,
                                sound = 2,
                                reply = playerData.source,
                                street = playerData.street,
                                blip = {
                                    sprite = 137, 
                                    colour = 1,
                                    scale = 1.0, 
                                    text = v.Title,
                                },
                                info = { 
                                    {icon = 'fa-solid fa-person', text = playerData.name}, 
                                    {icon = 'fa-solid fa-message', text = message}, 
                                },
                            }
                            TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
                        else
                            local playerData = exports['l2s-dispatch']:GetPlayerData()
                            local message = table.concat(args, " ") 
                            local NotifyData = {
                                departments = v.Departments, 
                                title = v.Title ,
                                message = Lang('Anonymous_Calls_Message', {msg = message}),
                                coords = vec2(0.0, 0.0),
                                priority = 3,
                                sound = 2,
                                reply = playerData.source,
                                anonymous = true,
                                blip = false,
                                info = { 
                                    {icon = 'fa-solid fa-message', text = message}, 
                                },
                            }
                            TriggerServerEvent('l2s-dispatch:server:AddNotification', NotifyData)
                        end
                    end)
                else
                    Notify(Lang('EmptyMSG'), 'error')
                end
            end)
        end

    end
end)