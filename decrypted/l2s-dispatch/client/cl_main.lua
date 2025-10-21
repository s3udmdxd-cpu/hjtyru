local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = exports
L1_1 = Shared
L1_1 = L1_1.Settings
L1_1 = L1_1.FrameworkFolder
L0_1 = L0_1[L1_1]
L1_1 = L0_1
L0_1 = L0_1.GetCoreObject
L0_1 = L0_1(L1_1)
L1_1 = L0_1.Functions
L1_1 = L1_1.GetPlayerData
L1_1 = L1_1()
L1_1 = L1_1.job
L2_1 = false
L3_1 = false
L4_1 = false
L5_1 = false
L6_1 = Shared
L6_1 = L6_1.Settings
L6_1 = L6_1.UpdateTimout
L6_1 = L6_1.ClientPerformanceOn
L7_1 = false
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = Shared
  L2_2 = L2_2.JobsHub
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Jobs
    L7_2 = L7_2[A0_2]
    if L7_2 then
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
L9_1 = RegisterNetEvent
L10_1 = Shared
L10_1 = L10_1.Settings
L10_1 = L10_1.OnPlayerLoaded
function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 1500
  L0_2(L1_2)
  L0_2 = L0_1.Functions
  L0_2 = L0_2.GetPlayerData
  L0_2 = L0_2()
  L0_2 = L0_2.job
  L1_1 = L0_2
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = L8_1
  L1_2 = L1_1.name
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "l2s-dispatch:server:AddPlayer"
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = Shared
L10_1 = L10_1.Settings
L10_1 = L10_1.OnPlayerUnload
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = Shared
L10_1 = L10_1.Settings
L10_1 = L10_1.OnPlayerUnload
function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  if L0_2 then
    L0_2 = false
    L2_1 = L0_2
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "HideHub"
    L0_2(L1_2)
    L0_2 = SetNuiFocus
    L1_2 = false
    L2_2 = false
    L0_2(L1_2, L2_2)
  end
  L0_2 = L4_1
  if L0_2 then
    L0_2 = false
    L4_1 = L0_2
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "HideDashboad"
    L0_2(L1_2)
    L0_2 = SetNuiFocus
    L1_2 = false
    L2_2 = false
    L0_2(L1_2, L2_2)
  end
  L0_2 = AlertsOpened
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "CloseSplitBox"
    L0_2(L1_2)
  end
  L0_2 = ClearFullAlerts
  L0_2()
  L0_2 = false
  L5_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "l2s-dispatch:server:RemovePlayer"
  L0_2(L1_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = Shared
L10_1 = L10_1.Settings
L10_1 = L10_1.OnJobUpdate
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Wait
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = L1_1.name
  L2_2 = A0_2.name
  if L1_2 ~= L2_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "l2s-dispatch:server:RemovePlayer"
    L1_2(L2_2)
    L1_2 = false
    L2_1 = L1_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "HideHub"
    L1_2(L2_2)
    L1_2 = L4_1
    if L1_2 then
      L1_2 = false
      L4_1 = L1_2
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "HideDashboad"
      L1_2(L2_2)
    end
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = false
    L5_1 = L1_2
    L1_2 = AlertsOpened
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "CloseSplitBox"
      L1_2(L2_2)
    end
    L1_2 = ClearFullAlerts
    L1_2()
  end
  L1_1 = A0_2
  L1_2 = Wait
  L2_2 = 1500
  L1_2(L2_2)
  L1_2 = L8_1
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "l2s-dispatch:server:AddPlayer"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.onduty
    if nil ~= L2_2 then
      L2_2 = L7_1
      if false == L2_2 then
        L2_2 = SendNUIMessage
        L3_2 = {}
        L3_2.action = "RefreshDuty"
        L4_2 = A0_2.onduty
        L3_2.myduty = L4_2
        L2_2(L3_2)
        L2_2 = TriggerServerEvent
        L3_2 = "l2s-dispatch:server:SetDutyStatus"
        L4_2 = A0_2.onduty
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = Shared
L10_1 = L10_1.Settings
L10_1 = L10_1.SetDuty
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = Shared
L10_1 = L10_1.Settings
L10_1 = L10_1.SetDuty
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  if L1_2 then
    L1_2 = true
    L7_1 = L1_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "RefreshDuty"
    L2_2.myduty = A0_2
    L1_2(L2_2)
    L1_2 = false
    L7_1 = L1_2
  end
  L1_2 = TriggerServerEvent
  L2_2 = "l2s-dispatch:server:SetDutyStatus"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L9_1(L10_1, L11_1)
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetFirstBlipInfoId
  L1_2 = 8
  L0_2 = L0_2(L1_2)
  L1_2 = 0.0
  L2_2 = 0.0
  if 0 ~= L0_2 then
    L3_2 = GetBlipCoords
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L1_2 = L3_2.x
    L2_2 = L3_2.y
  end
  L3_2 = {}
  L3_2.x = L1_2
  L3_2.y = L2_2
  return L3_2
end
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L8_1
  L1_2 = L1_1.name
  L0_2 = L0_2(L1_2)
  L1_2 = L0_1.Functions
  L1_2 = L1_2.GetPlayerData
  L1_2 = L1_2()
  if L0_2 then
    L2_2 = L4_1
    if false == L2_2 then
      L2_2 = print
      L3_2 = "^4 MADE WITH LOVE BY [WWW.L2S.DEV] ^0"
      L2_2(L3_2)
      L2_2 = true
      L4_1 = L2_2
      L2_2 = GlobalState
      L2_2 = L2_2[L0_2]
      L3_2 = GetTotalUnits
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L4_2 = SendNUIMessage
      L5_2 = {}
      L5_2.action = "OpenDashboad"
      L5_2.Players = L2_2
      L6_2 = Shared
      L6_2 = L6_2.JobsHub
      L6_2 = L6_2[L0_2]
      L5_2.Options = L6_2
      L5_2.jobAccess = L0_2
      L6_2 = L1_2.job
      L6_2 = L6_2.onduty
      L5_2.Duty = L6_2
      L6_2 = L1_2.metadata
      L6_2 = L6_2.l2s_dispatch
      L5_2.Profile = L6_2
      L6_2 = L1_2.source
      L5_2.source = L6_2
      L5_2.Total = L3_2
      L6_2 = Shared
      L6_2 = L6_2.Settings
      L6_2 = L6_2.Lang
      L5_2.lang = L6_2
      L4_2(L5_2)
      L4_2 = L3_1
      if false == L4_2 then
        L4_2 = true
        L3_1 = L4_2
        L4_2 = SetNuiFocus
        L5_2 = true
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = SendNUIMessage
        L5_2 = {}
        L5_2.action = "soundsEffect"
        L5_2.name = "dompin"
        L5_2.vol = 0.8
        L5_2.pause = true
        L5_2.mouse = true
        L4_2(L5_2)
      end
    else
      L2_2 = false
      L4_1 = L2_2
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.action = "HideDashboad"
      L2_2(L3_2)
    end
  else
    L2_2 = Notify
    L3_2 = Lang
    L4_2 = "NoAccess"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L2_2(L3_2, L4_2)
  end
end
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L8_1
  L1_2 = L1_1.name
  L0_2 = L0_2(L1_2)
  L1_2 = L0_1.Functions
  L1_2 = L1_2.GetPlayerData
  L1_2 = L1_2()
  if L0_2 then
    L2_2 = L2_1
    if false == L2_2 then
      L2_2 = true
      L2_1 = L2_2
      while true do
        L2_2 = next
        L3_2 = GlobalState
        L3_2 = L3_2[L0_2]
        L2_2 = L2_2(L3_2)
        if nil ~= L2_2 then
          break
        end
        L2_2 = Wait
        L3_2 = 100
        L2_2(L3_2)
        L2_2 = print
        L3_2 = "^3 Loading "
        L4_2 = L0_2
        L5_2 = " Hub "
        L3_2 = L3_2 .. L4_2 .. L5_2
        L2_2(L3_2)
      end
      L2_2 = GlobalState
      L2_2 = L2_2[L0_2]
      L3_2 = GetTotalUnits
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L4_2 = SendNUIMessage
      L5_2 = {}
      L5_2.action = "OpenHub"
      L5_2.Players = L2_2
      L6_2 = Shared
      L6_2 = L6_2.JobsHub
      L6_2 = L6_2[L0_2]
      L5_2.Options = L6_2
      L5_2.jobAccess = L0_2
      L6_2 = L1_2.job
      L6_2 = L6_2.onduty
      L5_2.Duty = L6_2
      L6_2 = L1_2.metadata
      L6_2 = L6_2.l2s_dispatch
      L5_2.Profile = L6_2
      L6_2 = L1_2.source
      L5_2.source = L6_2
      L5_2.Total = L3_2
      L6_2 = Shared
      L6_2 = L6_2.Settings
      L6_2 = L6_2.Lang
      L5_2.lang = L6_2
      L4_2(L5_2)
    else
      L2_2 = false
      L2_1 = L2_2
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.action = "HideHub"
      L2_2(L3_2)
    end
  else
    L2_2 = Notify
    L3_2 = Lang
    L4_2 = "NoAccess"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L2_2(L3_2, L4_2)
  end
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L8_1
  L2_2 = L1_1.name
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.Functions
  L2_2 = L2_2.GetPlayerData
  L2_2 = L2_2()
  if L1_2 then
    if true == A0_2 then
      L3_2 = L2_1
      if false == L3_2 then
        L3_2 = true
        L2_1 = L3_2
        while true do
          L3_2 = next
          L4_2 = GlobalState
          L4_2 = L4_2[L1_2]
          L3_2 = L3_2(L4_2)
          if nil ~= L3_2 then
            break
          end
          L3_2 = Wait
          L4_2 = 100
          L3_2(L4_2)
          L3_2 = print
          L4_2 = "^3 Loading "
          L5_2 = L1_2
          L6_2 = " Hub "
          L4_2 = L4_2 .. L5_2 .. L6_2
          L3_2(L4_2)
        end
        L3_2 = GlobalState
        L3_2 = L3_2[L1_2]
        L4_2 = GetTotalUnits
        L5_2 = L1_2
        L4_2 = L4_2(L5_2)
        L5_2 = SendNUIMessage
        L6_2 = {}
        L6_2.action = "OpenHub"
        L6_2.Players = L3_2
        L7_2 = Shared
        L7_2 = L7_2.JobsHub
        L7_2 = L7_2[L1_2]
        L6_2.Options = L7_2
        L6_2.jobAccess = L1_2
        L7_2 = L2_2.job
        L7_2 = L7_2.onduty
        L6_2.Duty = L7_2
        L7_2 = L2_2.metadata
        L7_2 = L7_2.l2s_dispatch
        L6_2.Profile = L7_2
        L7_2 = L2_2.source
        L6_2.source = L7_2
        L6_2.Total = L4_2
        L7_2 = Shared
        L7_2 = L7_2.Settings
        L7_2 = L7_2.Lang
        L6_2.lang = L7_2
        L5_2(L6_2)
    end
    elseif false == A0_2 then
      L3_2 = L2_1
      if true == L3_2 then
        L3_2 = false
        L2_1 = L3_2
        L3_2 = SendNUIMessage
        L4_2 = {}
        L4_2.action = "HideHub"
        L3_2(L4_2)
      end
    end
  else
    L3_2 = Notify
    L4_2 = Lang
    L5_2 = "NoAccess"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    L3_2(L4_2, L5_2)
  end
end
L13_1 = RegisterCommand
L14_1 = "togglemouse"
function L15_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L8_1
  L1_2 = L1_1.name
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = L3_1
    if true == L1_2 then
      L1_2 = false
      L3_1 = L1_2
      L1_2 = SetNuiFocus
      L2_2 = false
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "soundsEffect"
      L2_2.name = "dompout"
      L2_2.vol = 0.8
      L2_2.pause = true
      L2_2.mouse = true
      L1_2(L2_2)
    else
      L1_2 = true
      L3_1 = L1_2
      L1_2 = SetNuiFocus
      L2_2 = true
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "soundsEffect"
      L2_2.name = "dompin"
      L2_2.vol = 0.8
      L2_2.pause = true
      L2_2.mouse = true
      L1_2(L2_2)
    end
  end
end
L16_1 = false
L13_1(L14_1, L15_1, L16_1)
L13_1 = Citizen
L13_1 = L13_1.CreateThread
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = L2_1
    if not L0_2 then
      L0_2 = L4_1
      if not L0_2 then
        goto lbl_51
      end
    end
    L0_2 = L8_1
    L1_2 = L1_1.name
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L1_2 = GlobalState
      L1_2 = L1_2[L0_2]
      L2_2 = GetTotalUnits
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L3_2 = L0_1.Functions
      L3_2 = L3_2.GetPlayerData
      L3_2 = L3_2()
      L4_2 = SendNUIMessage
      L5_2 = {}
      L5_2.action = "RefreshHub"
      L5_2.Players = L1_2
      L5_2.jobAccess = L0_2
      L6_2 = L3_2.metadata
      L6_2 = L6_2.l2s_dispatch
      L6_2 = L6_2.callsign
      L5_2.callsign = L6_2
      L6_2 = L3_2.metadata
      L6_2 = L6_2.l2s_dispatch
      L5_2.Profile = L6_2
      L5_2.Total = L2_2
      L6_2 = Shared
      L6_2 = L6_2.Settings
      L6_2 = L6_2.Lang
      L5_2.lang = L6_2
      L4_2(L5_2)
    else
      L1_2 = TriggerServerEvent
      L2_2 = "l2s-dispatch:server:RemovePlayer"
      L1_2(L2_2)
      L1_2 = false
      L2_1 = L1_2
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "HideHub"
      L1_2(L2_2)
      goto lbl_54
      ::lbl_51::
      L0_2 = Wait
      L1_2 = 2500
      L0_2(L1_2)
    end
    ::lbl_54::
    L0_2 = Wait
    L1_2 = L6_1
    L0_2(L1_2)
  end
end
L13_1(L14_1)
function L13_1()
  local L0_2, L1_2
  L0_2 = L4_1
  return L0_2
end
isDashOpened = L13_1
L13_1 = Citizen
L13_1 = L13_1.CreateThread
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  while true do
    L0_2 = L4_1
    if L0_2 then
      L0_2 = L8_1
      L1_2 = L1_1.name
      L0_2 = L0_2(L1_2)
      L1_2 = L5_1
      if L1_2 then
        L1_2 = GlobalState
        L1_2 = L1_2[L0_2]
        L2_2 = {}
        L3_2 = 0
        L4_2 = pairs
        L5_2 = L1_2
        L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
        for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
          if nil ~= L9_2 and nil ~= L8_2 then
            L10_2 = L9_2.duty
            if true == L10_2 then
              L3_2 = L3_2 + 1
              L10_2 = L9_2.coords
              L11_2 = GetPlayerFromServerId
              L12_2 = L9_2.source
              L11_2 = L11_2(L12_2)
              if -1 ~= L11_2 then
                L12_2 = GetPlayerPed
                L13_2 = GetPlayerFromServerId
                L14_2 = L9_2.source
                L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
                L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
                if L12_2 then
                  L12_2 = GetEntityCoords
                  L13_2 = GetPlayerPed
                  L14_2 = GetPlayerFromServerId
                  L15_2 = L9_2.source
                  L14_2, L15_2, L16_2 = L14_2(L15_2)
                  L13_2 = L13_2(L14_2, L15_2, L16_2)
                  L14_2 = true
                  L12_2 = L12_2(L13_2, L14_2)
                  L13_2 = vec2
                  L14_2 = math
                  L14_2 = L14_2.floor
                  L15_2 = L12_2.x
                  L14_2 = L14_2(L15_2)
                  L15_2 = math
                  L15_2 = L15_2.floor
                  L16_2 = L12_2.y
                  L15_2, L16_2 = L15_2(L16_2)
                  L13_2 = L13_2(L14_2, L15_2, L16_2)
                  L9_2.coords = L13_2
                end
              end
              L12_2 = {}
              L13_2 = L9_2.coords
              L12_2.coords = L13_2
              L13_2 = {}
              L14_2 = L9_2.callsign
              L13_2.callsign = L14_2
              L14_2 = L9_2.name
              L13_2.name = L14_2
              L12_2.profile = L13_2
              L13_2 = L9_2.source
              L12_2.source = L13_2
              L2_2[L8_2] = L12_2
            end
          end
        end
        L4_2 = Wait
        L5_2 = 200
        L4_2(L5_2)
        L4_2 = SendNUIMessage
        L5_2 = {}
        L5_2.action = "UpdateUnits-Map"
        L5_2.Units = L2_2
        L4_2(L5_2)
        L4_2 = Wait
        L5_2 = L3_2 * 75
        L5_2 = 1000 + L5_2
        L4_2(L5_2)
      else
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 3000
        L1_2(L2_2)
      end
    else
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 3000
      L0_2(L1_2)
    end
  end
end
L13_1(L14_1)
L13_1 = RegisterNetEvent
L14_1 = "l2s-dispatch:client:SendChatMSG"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "AddChatMSG"
  L3_2 = A0_2.text
  L2_2.text = L3_2
  L3_2 = A0_2.source
  L2_2.source = L3_2
  L3_2 = A0_2.time
  L2_2.time = L3_2
  L3_2 = A0_2.callsign
  L2_2.callsign = L3_2
  L3_2 = A0_2.name
  L2_2.name = L3_2
  L1_2(L2_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "ShareInfo"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "l2s-dispatch:server:ShareInfo"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "l2s-dispatch:client:ShareInfo"
function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "reciveShared"
  L5_2.type = A0_2
  L5_2.data = A1_2
  L5_2.SenderName = A2_2
  L5_2.SenderSource = A3_2
  L4_2(L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "CloseMouse"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = false
  L3_1 = L2_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "toggleRadarUnits"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L5_1
  L2_2 = not L2_2
  L5_1 = L2_2
  L2_2 = A1_2
  L3_2 = L5_1
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "stopRadarUnits"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = false
  L5_1 = L2_2
  L2_2 = A1_2
  L3_2 = L5_1
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "OfficerActions"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L2_2 = A0_2.service
    if "WayPoint" == L2_2 then
      L2_2 = L8_1
      L3_2 = L1_1.name
      L2_2 = L2_2(L3_2)
      L3_2 = GlobalState
      L3_2 = L3_2[L2_2]
      L4_2 = tonumber
      L5_2 = A0_2.source
      L4_2 = L4_2(L5_2)
      L4_2 = L3_2[L4_2]
      if L4_2 then
        L4_2 = Shared
        L4_2 = L4_2.Settings
        L4_2 = L4_2.OffDutyActions
        if true ~= L4_2 then
          L4_2 = A0_2.source
          L4_2 = L3_2[L4_2]
          L4_2 = L4_2.duty
          if true ~= L4_2 then
            goto lbl_41
          end
        end
        L4_2 = A0_2.source
        L4_2 = L3_2[L4_2]
        L4_2 = L4_2.coords
        L5_2 = SetDispatchWayPoint
        L6_2 = L4_2.x
        L7_2 = L4_2.y
        L5_2(L6_2, L7_2)
        L5_2 = Notify
        L6_2 = Lang
        L7_2 = "WayPoint"
        L6_2 = L6_2(L7_2)
        L7_2 = "success"
        L5_2(L6_2, L7_2)
        goto lbl_74
        ::lbl_41::
        L4_2 = Notify
        L5_2 = Lang
        L6_2 = "OffDutyWayPoint"
        L5_2 = L5_2(L6_2)
        L6_2 = "error"
        L4_2(L5_2, L6_2)
      else
        L4_2 = Notify
        L5_2 = Lang
        L6_2 = "NoPlayer"
        L5_2 = L5_2(L6_2)
        L6_2 = "error"
        L4_2(L5_2, L6_2)
      end
    else
      L2_2 = A0_2.service
      if "JoinFreq" == L2_2 then
        L2_2 = A0_2.channel
        if "OFF" ~= L2_2 then
          L2_2 = ChangeRadioChannel
          L3_2 = A0_2.channel
          L2_2(L3_2)
          L2_2 = Notify
          L3_2 = Lang
          L4_2 = "JoinChannel"
          L5_2 = {}
          L6_2 = A0_2.channel
          L5_2.channel = L6_2
          L3_2 = L3_2(L4_2, L5_2)
          L4_2 = "error"
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
  ::lbl_74::
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "ToggleStatus"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = A0_2.service
    if "duty_callsign" == L2_2 then
      L2_2 = TriggerServerEvent
      L3_2 = "l2s-dispatch:server:SetCallsign"
      L4_2 = A0_2.sign
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2.service
      if "duty_status" == L2_2 then
        L2_2 = TriggerServerEvent
        L3_2 = "l2s-dispatch:server:SetDuty"
        L4_2 = A0_2.bool
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2.service
        if "duty_busy" == L2_2 then
          L2_2 = TriggerServerEvent
          L3_2 = "l2s-dispatch:server:SetBusy"
          L4_2 = A0_2.bool
          L2_2(L3_2, L4_2)
        else
          L2_2 = A0_2.service
          if "duty_dispatch" == L2_2 then
            L2_2 = TriggerServerEvent
            L3_2 = "l2s-dispatch:server:SetDispatch"
            L4_2 = A0_2.bool
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "ListSettings"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = A0_2.service
    if "performance" == L2_2 then
      L2_2 = A0_2.bool
      if true == L2_2 then
        L2_2 = Shared
        L2_2 = L2_2.Settings
        L2_2 = L2_2.UpdateTimout
        L2_2 = L2_2.ClientPerformanceOn
        L6_1 = L2_2
      else
        L2_2 = Shared
        L2_2 = L2_2.Settings
        L2_2 = L2_2.UpdateTimout
        L2_2 = L2_2.ClientPerformanceOff
        L6_1 = L2_2
      end
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "dashboardstate"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = A0_2.state
    L4_1 = L2_2
    L2_2 = Shared
    L2_2 = L2_2.Settings
    L2_2 = L2_2.Tablet
    if L2_2 then
      L2_2 = ToggleTablet
      L3_2 = A0_2.state
      L2_2(L3_2)
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetAPIs"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "l2s-dispatch:server:ReturnAPIs"
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.apis = L2_2
  L5_2 = Shared
  L5_2 = L5_2.Settings
  L5_2 = L5_2.Recordings
  L5_2 = L5_2.RecordTime
  L4_2.time = L5_2
  L3_2(L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "ToggleRecord"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "toggle_record"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SendMSG"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "l2s-dispatch:server:SendChatMSG"
    L4_2 = A0_2.text
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetCloseVehicle"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = GetClosestVehicle
  L3_2, L4_2 = L3_2()
  if -1 ~= L3_2 and L4_2 < 14 then
    L5_2 = GetPlate
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L2_2 = L5_2
  end
  L5_2 = A1_2
  L6_2 = L2_2
  L5_2(L6_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetFlaggedVehicles"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = lib
    L2_2 = L2_2.callback
    L2_2 = L2_2.await
    L3_2 = "l2s-dispatch:server:GetFlaggedVehicles"
    L4_2 = false
    L5_2 = A0_2.page
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = A1_2
    L4_2 = {}
    L5_2 = L2_2.results
    L4_2.vehicles = L5_2
    L5_2 = L2_2.totalCount
    L4_2.count = L5_2
    L3_2(L4_2)
  else
    L2_2 = A1_2
    L3_2 = false
    L2_2(L3_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "AddFlagVeh"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = false
  L3_2 = false
  if A0_2 then
    L4_2 = lib
    L4_2 = L4_2.callback
    L4_2 = L4_2.await
    L5_2 = "l2s-dispatch:server:FlaggedVehicle"
    L6_2 = false
    L7_2 = A0_2.plate
    L8_2 = A0_2.reason
    L9_2 = A0_2.priority
    L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = L4_2
    if not L4_2 then
      L3_2 = L5_2
    end
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.bool = L2_2
  L5_2.msg = L3_2
  L4_2(L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "UnFlaggedVehicle"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "l2s-dispatch:server:UnFlaggedVehicle"
    L4_2 = A0_2.plate
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SearchAll"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = lib
    L2_2 = L2_2.callback
    L2_2 = L2_2.await
    L3_2 = "l2s-dispatch:server:SearchAll"
    L4_2 = false
    L5_2 = A0_2.searchValue
    L6_2 = A0_2.page
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L4_2 = A1_2
    L5_2 = {}
    L6_2 = L3_2.vehicles
    L5_2.vehicles = L6_2
    L6_2 = L3_2.count
    L5_2.count = L6_2
    L4_2(L5_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetwayPoint"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L9_1
  L2_2 = L2_2()
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "MapWayPoint"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = GetFirstBlipInfoId
  L4_2 = 8
  L3_2 = L3_2(L4_2)
  L4_2 = 0.0
  L5_2 = 0.0
  if 0 ~= L3_2 then
    L6_2 = GetBlipCoords
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2.x
    L5_2 = L6_2.y
    L7_2 = DeleteWaypoint
    L7_2()
    L7_2 = A1_2
    L8_2 = "remove"
    L7_2(L8_2)
  else
    L6_2 = A0_2.x
    if L6_2 then
      L6_2 = A0_2.y
      if L6_2 then
        L6_2 = SetDispatchWayPoint
        L7_2 = A0_2.x
        L8_2 = A0_2.y
        L6_2(L7_2, L8_2)
        L6_2 = Wait
        L7_2 = 120
        L6_2(L7_2)
        L6_2 = GetFirstBlipInfoId
        L7_2 = 8
        L6_2 = L6_2(L7_2)
        L7_2 = 0.0
        L8_2 = 0.0
        if 0 ~= L6_2 then
          L9_2 = GetBlipCoords
          L10_2 = L6_2
          L9_2 = L9_2(L10_2)
          L7_2 = L9_2.x
          L8_2 = L9_2.y
        end
        if 0 ~= L7_2 and 0 ~= L8_2 then
          L9_2 = {}
          L9_2.x = L7_2
          L9_2.y = L8_2
          L2_2 = L9_2
        else
          L2_2 = false
        end
    end
    else
      L2_2 = false
    end
  end
  L6_2 = A1_2
  L7_2 = L2_2
  L6_2(L7_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "RemoveWayPoint"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = DeleteWaypoint
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SearchAllRecords"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = lib
    L2_2 = L2_2.callback
    L2_2 = L2_2.await
    L3_2 = "l2s-dispatch:server:SearchAllRecords"
    L4_2 = false
    L5_2 = A0_2.searchValue
    L6_2 = A0_2.page
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L4_2 = A1_2
    L5_2 = {}
    L6_2 = L3_2.videos
    L5_2.videos = L6_2
    L6_2 = L3_2.count
    L5_2.count = L6_2
    L4_2(L5_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SaveVideo"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.videoData
  if A0_2 and L2_2 then
    L3_2 = lib
    L3_2 = L3_2.callback
    L3_2 = L3_2.await
    L4_2 = "l2s-dispatch:server:SaveRecordedVideo"
    L5_2 = false
    L6_2 = L2_2.url
    L7_2 = L2_2.location
    L8_2 = L2_2.camName
    L9_2 = L2_2.title
    L10_2 = L2_2.description
    L11_2 = L2_2.priority
    L12_2 = L2_2.date
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2 = A1_2
    L6_2 = {}
    L6_2.bool = L3_2
    L6_2.msg = L4_2
    L5_2(L6_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "RemoveVideo"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = A0_2.url
    if L2_2 then
      L2_2 = lib
      L2_2 = L2_2.callback
      L2_2 = L2_2.await
      L3_2 = "l2s-dispatch:server:RemoveRecordedVideo"
      L4_2 = false
      L5_2 = A0_2.url
      L6_2 = A0_2.title
      L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L4_2 = A1_2
      L5_2 = {}
      L5_2.bool = L2_2
      L5_2.msg = L3_2
      L4_2(L5_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetHubVideos"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = lib
    L2_2 = L2_2.callback
    L2_2 = L2_2.await
    L3_2 = "l2s-dispatch:server:GetRecordedVideos"
    L4_2 = false
    L5_2 = A0_2.page
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = A1_2
    L4_2 = {}
    L5_2 = L2_2.results
    L4_2.videos = L5_2
    L5_2 = L2_2.totalCount
    L4_2.count = L5_2
    L3_2(L4_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetMyRecords"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = lib
    L2_2 = L2_2.callback
    L2_2 = L2_2.await
    L3_2 = "l2s-dispatch:server:GetMyRecords"
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A1_2
    L4_2 = {}
    L5_2 = L2_2.results
    L4_2.videos = L5_2
    L5_2 = L2_2.totalCount
    L4_2.count = L5_2
    L3_2(L4_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "TakeScreenShot"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ScreenShot
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GlobalState
  L1_2 = L1_2[A0_2]
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Shared
    L9_2 = L9_2.JobsHub
    L9_2 = L9_2[A0_2]
    L9_2 = L9_2.Jobs
    L10_2 = L8_2.job
    L9_2 = L9_2[L10_2]
    if L9_2 then
      L9_2 = L8_2.job
      L9_2 = L2_2[L9_2]
      if L9_2 then
        L9_2 = L8_2.job
        L9_2 = L2_2[L9_2]
        L10_2 = L8_2.job
        L10_2 = L2_2[L10_2]
        L10_2 = L10_2.total
        L10_2 = L10_2 + 1
        L9_2.total = L10_2
        L9_2 = L8_2.duty
        if L9_2 then
          L9_2 = L8_2.busy
          if true == L9_2 then
            L9_2 = L8_2.job
            L9_2 = L2_2[L9_2]
            L10_2 = L8_2.job
            L10_2 = L2_2[L10_2]
            L10_2 = L10_2.busy
            L10_2 = L10_2 + 1
            L9_2.busy = L10_2
          end
        else
          L9_2 = L8_2.job
          L9_2 = L2_2[L9_2]
          L10_2 = L8_2.job
          L10_2 = L2_2[L10_2]
          L10_2 = L10_2.off
          L10_2 = L10_2 + 1
          L9_2.off = L10_2
        end
      else
        L9_2 = L8_2.job
        L10_2 = {}
        L10_2.total = 1
        L10_2.off = 0
        L10_2.busy = 0
        L2_2[L9_2] = L10_2
        L9_2 = L8_2.duty
        if L9_2 then
          L9_2 = L8_2.busy
          if true == L9_2 then
            L9_2 = L8_2.job
            L9_2 = L2_2[L9_2]
            L10_2 = L8_2.job
            L10_2 = L2_2[L10_2]
            L10_2 = L10_2.busy
            L10_2 = L10_2 + 1
            L9_2.busy = L10_2
          end
        else
          L9_2 = L8_2.job
          L9_2 = L2_2[L9_2]
          L10_2 = L8_2.job
          L10_2 = L2_2[L10_2]
          L10_2 = L10_2.off
          L10_2 = L10_2 + 1
          L9_2.off = L10_2
        end
      end
    end
  end
  return L2_2
end
GetTotalUnits = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "l2s-dispatch:server:GetHooks"
  L3_2 = false
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  if "" == L2_2 or "YOUR_TOKEN" == L2_2 then
    L4_2 = print
    L5_2 = "Failed to upload video to FiveManage: SET TOKEN PROPERLY IN shared/sh_api.lua"
    L4_2(L5_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = ""
  if "discord" == L1_2 then
    L5_2 = exports
    L5_2 = L5_2["screenshot-basic"]
    L6_2 = L5_2
    L5_2 = L5_2.requestScreenshotUpload
    L7_2 = L2_2
    L8_2 = "files[]"
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.attachments
      L2_3 = L2_3[1]
      L2_3 = L2_3.proxy_url
      L3_3 = string
      L3_3 = L3_3.gsub
      L4_3 = L2_3
      L5_3 = "https://media.discordapp.net"
      L6_3 = "https://cdn.discordapp.com"
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
      L3_3 = Wait
      L4_3 = 200
      L3_3(L4_3)
      L3_3 = SendNUIMessage
      L4_3 = {}
      L4_3.action = "AddScreenShot"
      L4_3.link = L2_3
      L5_3 = A0_2.location
      if not L5_3 then
        L5_3 = "Unknown"
      end
      L4_3.location = L5_3
      L5_3 = A0_2.camName
      if not L5_3 then
        L5_3 = "Unknown"
      end
      L4_3.camName = L5_3
      L3_3(L4_3)
    end
    L5_2(L6_2, L7_2, L8_2, L9_2)
  elseif "fivemanage" == L1_2 then
    L5_2 = exports
    L5_2 = L5_2["screenshot-basic"]
    L6_2 = L5_2
    L5_2 = L5_2.requestScreenshotUpload
    L7_2 = "https://api.fivemanage.com/api/image"
    L8_2 = "image"
    L9_2 = {}
    L10_2 = {}
    L10_2.Authorization = L2_2
    L9_2.headers = L10_2
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L2_3 = SendNUIMessage
        L3_3 = {}
        L3_3.action = "AddScreenShot"
        L4_3 = L1_3.url
        L3_3.link = L4_3
        L4_3 = A0_2.location
        if not L4_3 then
          L4_3 = "Unknown"
        end
        L3_3.location = L4_3
        L4_3 = A0_2.camName
        if not L4_3 then
          L4_3 = "Unknown"
        end
        L3_3.camName = L4_3
        L2_3(L3_3)
      end
    end
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  elseif "fivemerr" == L1_2 then
    L5_2 = exports
    L5_2 = L5_2["screenshot-basic"]
    L6_2 = L5_2
    L5_2 = L5_2.requestScreenshotUpload
    L7_2 = "https://api.fivemerr.com/v1/media/images"
    L8_2 = "file"
    L9_2 = {}
    L10_2 = {}
    L10_2.Authorization = L2_2
    L9_2.headers = L10_2
    L9_2.encoding = "png"
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        if L1_3 then
          L2_3 = L1_3.url
          if L2_3 then
            goto lbl_13
          end
        end
        L2_3 = "invalid_url"
        ::lbl_13::
        L3_3 = SendNUIMessage
        L4_3 = {}
        L4_3.action = "AddScreenShot"
        L5_3 = L1_3.url
        L4_3.link = L5_3
        L5_3 = A0_2.location
        if not L5_3 then
          L5_3 = "Unknown"
        end
        L4_3.location = L5_3
        L5_3 = A0_2.camName
        if not L5_3 then
          L5_3 = "Unknown"
        end
        L4_3.camName = L5_3
        L3_3(L4_3)
      end
    end
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
ScreenShot = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.action = "AddLog"
  L7_2.header = A0_2
  L7_2.body = A1_2
  L7_2.details = A2_2
  L7_2.priority = A3_2
  L7_2.image = A4_2
  L7_2.date = A5_2
  L6_2(L7_2)
end
AddNewLog = L13_1
L13_1 = AddEventHandler
L14_1 = "onResourceStart"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 == A0_2 then
    L1_2 = L0_1.Functions
    L1_2 = L1_2.GetPlayerData
    L1_2 = L1_2()
    L1_2 = L1_2.job
    L2_2 = L8_1
    L3_2 = L1_2.name
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "l2s-dispatch:server:AddPlayer"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = exports
L14_1 = "ToggleDashboard"
L15_1 = L10_1
L13_1(L14_1, L15_1)
L13_1 = exports
L14_1 = "CheckAccess"
L15_1 = L8_1
L13_1(L14_1, L15_1)
L13_1 = exports
L14_1 = "ToggleList"
L15_1 = L11_1
L13_1(L14_1, L15_1)
L13_1 = exports
L14_1 = "ShowList"
L15_1 = L12_1
L13_1(L14_1, L15_1)
