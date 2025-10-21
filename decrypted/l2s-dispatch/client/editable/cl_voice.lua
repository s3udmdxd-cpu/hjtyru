
-- << Voice System Customization >> 

function ChangeRadioChannel(target_channel)
    if not HasItem(Shared.Settings.RadioItem) then
        Notify(Lang('No_Radio'), 'error')
        return
    end
    if Shared.Settings.VoiceSystem == 'pmavoice' then
        exports['pma-voice']:setRadioChannel(target_channel)
        exports['pma-voice']:setVoiceProperty('radioEnabled', true)
        TriggerServerEvent('l2s-dispatch:server:SetChannel', target_channel)
    elseif Shared.Settings.VoiceSystem == 'tokovoip' then
        local playerID = GetPlayerName(PlayerId())
        local currentChannel = exports['tokovoip_script']:getPlayerData(playerID, 'radio:channel')
        if target_channel ~= tonumber(currentChannel) then
            exports['tokovoip_script']:removePlayerFromRadio(currentChannel)
            exports['tokovoip_script']:setPlayerData(playerID, 'radio:channel', target_channel, true)
            exports['tokovoip_script']:addPlayerToRadio(target_channel, true)
        end
        TriggerServerEvent('l2s-dispatch:server:SetChannel', target_channel)
    elseif Shared.Settings.VoiceSystem == 'mumble' then
        exports['mumble-voip']:SetRadioChannel(0)
        exports['mumble-voip']:SetRadioChannel(target_channel)
        exports['mumble-voip']:SetMumbleProperty('radioEnabled', true)
        TriggerServerEvent('l2s-dispatch:server:SetChannel', target_channel)
    elseif Shared.Settings.VoiceSystem == 'saltychat' then
        if target_channel == 0 then 
            exports['saltychat']:SetRadioChannel('', true)
        else
            exports['saltychat']:SetRadioChannel(target_channel, true)
        end
        TriggerServerEvent('l2s-dispatch:server:SetChannel', target_channel)
    elseif Shared.Settings.VoiceSystem == 'custom' then
        -- Add your custom voice system code here
        TriggerServerEvent('l2s-dispatch:server:SetChannel', target_channel)
    end
end