local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = 5
L1_1 = {}
L2_1 = {}
L3_1 = 0
L4_1 = 0
L5_1 = false
L6_1 = true
L7_1 = false
L8_1 = RegisterNUICallback
L9_1 = "SetAlertOfficers"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    L9_2 = A0_2.id
    if L8_2 == L9_2 then
      L8_2 = TriggerServerEvent
      L9_2 = "l2s-dispatch:server:SetAlertOfficers"
      L10_2 = L7_2
      L11_2 = A0_2.officers
      L8_2(L9_2, L10_2, L11_2)
      break
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "OpenEditMode"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.bool
  L7_1 = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "CallButtons"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.type
  if "next" == L2_2 then
    L2_2 = GetNextAlert
    L2_2 = L2_2()
    if L2_2 then
      L3_2 = DisplayInUi
      L4_2 = L2_2
      L5_2 = "next"
      L3_2(L4_2, L5_2)
    end
  else
    L2_2 = A0_2.type
    if "prev" == L2_2 then
      L2_2 = GetPreviousAlert
      L2_2 = L2_2()
      if L2_2 then
        L3_2 = DisplayInUi
        L4_2 = L2_2
        L5_2 = "prev"
        L3_2(L4_2, L5_2)
      end
    else
      L2_2 = A0_2.type
      if "respond" == L2_2 then
        L3_2 = L3_1
        L2_2 = L2_1
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2.responded
        if false == L3_2 then
          L2_2.responded = true
          L3_2 = Notify
          L4_2 = Lang
          L5_2 = "CallRespond"
          L4_2 = L4_2(L5_2)
          L5_2 = "info"
          L3_2(L4_2, L5_2)
          L3_2 = TriggerServerEvent
          L4_2 = "l2s-dispatch:server:Respond"
          L5_2 = L2_2.id
          L3_2(L4_2, L5_2)
          L3_2 = AddAlertLog
          L5_2 = L3_1
          L4_2 = L2_1
          L4_2 = L4_2[L5_2]
          L3_2(L4_2)
          L3_2 = L2_2.anonymous
          if not L3_2 then
            L3_2 = SetDispatchWayPoint
            L4_2 = L2_2.coords
            L4_2 = L4_2.x
            L5_2 = L2_2.coords
            L5_2 = L5_2.y
            L3_2(L4_2, L5_2)
            L3_2 = Shared
            L3_2 = L3_2.Dispatch
            L3_2 = L3_2.AutoBlip
            if false == L3_2 then
              L3_2 = L2_2.blip
              if L3_2 then
                L3_2 = addBlip
                L4_2 = L2_2.coords
                L5_2 = L2_2.blip
                L6_2 = L2_2.priority
                L7_2 = L2_2.id
                L3_2(L4_2, L5_2, L6_2, L7_2)
              end
            end
          end
        else
          L3_2 = Notify
          L4_2 = Lang
          L5_2 = "AlreadyRespond"
          L4_2 = L4_2(L5_2)
          L5_2 = "error"
          L3_2(L4_2, L5_2)
        end
      else
        L2_2 = A0_2.type
        if "delete" == L2_2 then
          L3_2 = L3_1
          L2_2 = L2_1
          L2_2 = L2_2[L3_2]
          if L2_2 then
            L2_2 = RemoveAlertById
            L4_2 = L3_1
            L3_2 = L2_1
            L3_2 = L3_2[L4_2]
            L3_2 = L3_2.id
            L2_2(L3_2)
          end
        end
      end
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = Shared
L9_1 = L9_1.Settings
L9_1 = L9_1.Commands
L9_1 = L9_1.Next
function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = AlertsOpened
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = GetNextAlert
    L0_2 = L0_2()
    if L0_2 then
      L1_2 = DisplayInUi
      L2_2 = L0_2
      L3_2 = "next"
      L1_2(L2_2, L3_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = Shared
L9_1 = L9_1.Settings
L9_1 = L9_1.Commands
L9_1 = L9_1.Previous
function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = AlertsOpened
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = GetPreviousAlert
    L0_2 = L0_2()
    if L0_2 then
      L1_2 = DisplayInUi
      L2_2 = L0_2
      L3_2 = "prev"
      L1_2(L2_2, L3_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = Shared
L9_1 = L9_1.Settings
L9_1 = L9_1.Commands
L9_1 = L9_1.Respond
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = AlertsOpened
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = isDashOpened
    L0_2 = L0_2()
    if not L0_2 then
      goto lbl_63
    end
  end
  L1_2 = L3_1
  L0_2 = L2_1
  L0_2 = L0_2[L1_2]
  if L0_2 then
    L1_2 = L0_2.responded
    if false == L1_2 then
      L0_2.responded = true
      L1_2 = Notify
      L2_2 = Lang
      L3_2 = "CallRespond"
      L2_2 = L2_2(L3_2)
      L3_2 = "info"
      L1_2(L2_2, L3_2)
      L1_2 = TriggerServerEvent
      L2_2 = "l2s-dispatch:server:Respond"
      L3_2 = L0_2.id
      L1_2(L2_2, L3_2)
      L1_2 = AddAlertLog
      L3_2 = L3_1
      L2_2 = L2_1
      L2_2 = L2_2[L3_2]
      L1_2(L2_2)
      L1_2 = L0_2.anonymous
      if not L1_2 then
        L1_2 = SetDispatchWayPoint
        L2_2 = L0_2.coords
        L2_2 = L2_2.x
        L3_2 = L0_2.coords
        L3_2 = L3_2.y
        L1_2(L2_2, L3_2)
        L1_2 = Shared
        L1_2 = L1_2.Dispatch
        L1_2 = L1_2.AutoBlip
        if false == L1_2 then
          L1_2 = L0_2.blip
          if L1_2 then
            L1_2 = addBlip
            L2_2 = L0_2.coords
            L3_2 = L0_2.blip
            L4_2 = L0_2.priority
            L5_2 = L0_2.id
            L1_2(L2_2, L3_2, L4_2, L5_2)
          end
        end
      end
  end
  else
    L1_2 = Notify
    L2_2 = Lang
    L3_2 = "AlreadyRespond"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    L1_2(L2_2, L3_2)
  end
  ::lbl_63::
end
L8_1(L9_1, L10_1)
function L8_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = nil
    return L0_2
  end
  L0_2 = L3_1
  L1_2 = L2_1
  L1_2 = #L1_2
  if L0_2 < L1_2 then
    L0_2 = L3_1
    L0_2 = L0_2 + 1
    L3_1 = L0_2
    L1_2 = L3_1
    L0_2 = L2_1
    L0_2 = L0_2[L1_2]
    return L0_2
  else
    L0_2 = nil
    return L0_2
  end
end
GetNextAlert = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = nil
    return L0_2
  end
  L0_2 = L3_1
  if L0_2 > 1 then
    L0_2 = L3_1
    L0_2 = L0_2 - 1
    L3_1 = L0_2
    L1_2 = L3_1
    L0_2 = L2_1
    L0_2 = L0_2[L1_2]
    return L0_2
  else
    L0_2 = nil
    return L0_2
  end
end
GetPreviousAlert = L8_1
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "UpdateCounter"
  L2_2 = L3_1
  L1_2.AlertsCounter = L2_2
  L2_2 = L2_1
  L2_2 = #L2_2
  L1_2.AlertsTotal = L2_2
  L0_2(L1_2)
end
UpdateCounter = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "DisplayAlert"
  L4_2 = A0_2.title
  L3_2.Title = L4_2
  L4_2 = A0_2.message
  L3_2.Message = L4_2
  L4_2 = A0_2.id
  L3_2.AlertID = L4_2
  L4_2 = A0_2.time
  L3_2.Time = L4_2
  L4_2 = A0_2.reply
  if not L4_2 then
    L4_2 = false
  end
  L3_2.Reply = L4_2
  L4_2 = A0_2.coords
  L3_2.Coords = L4_2
  L4_2 = A0_2.assigned
  if not L4_2 then
    L4_2 = 0
  end
  L3_2.Units = L4_2
  L4_2 = L3_1
  L3_2.AlertsCounter = L4_2
  L4_2 = L2_1
  L4_2 = #L4_2
  L3_2.AlertsTotal = L4_2
  L4_2 = A0_2.priority
  L3_2.Priority = L4_2
  L4_2 = A0_2.byDispatch
  L3_2.ByDispatch = L4_2
  L4_2 = A0_2.sound
  L3_2.Sound = L4_2
  L3_2.Status = A1_2
  L2_2(L3_2)
end
DisplayInUi = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "AddAlertLog"
  L3_2 = {}
  L4_2 = A0_2.title
  L3_2.title = L4_2
  L4_2 = A0_2.time
  L3_2.time = L4_2
  L4_2 = A0_2.message
  L3_2.message = L4_2
  L4_2 = A0_2.street
  L3_2.street = L4_2
  L4_2 = A0_2.priority
  L3_2.priority = L4_2
  L4_2 = A0_2.info
  L3_2.info = L4_2
  L2_2.NotifyData = L3_2
  L3_2 = L3_1
  L2_2.AlertsCounter = L3_2
  L3_2 = L2_1
  L3_2 = #L3_2
  L2_2.AlertsTotal = L3_2
  L1_2(L2_2)
end
AddAlertLog = L8_1
L8_1 = RegisterNetEvent
L9_1 = "l2s-dispatch:client:AddNotification"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L4_1
  L2_2 = L2_2 + 1
  L4_1 = L2_2
  L2_2 = L4_1
  A0_2.myId = L2_2
  L2_2 = A0_2.assigned
  if not L2_2 then
    L2_2 = 0
  end
  A0_2.assigned = L2_2
  A0_2.responded = false
  A0_2.byDispatch = A1_2
  L2_2 = L2_1
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = L2_1
  L3_2[L2_2] = A0_2
  L3_2 = L6_1
  if not L3_2 then
    L3_2 = L2_1
    L3_2 = #L3_2
    if 1 ~= L3_2 then
      goto lbl_37
    end
  end
  L3_2 = L7_1
  if false == L3_2 then
    L3_1 = L2_2
    L3_2 = DisplayInUi
    L4_2 = L2_1
    L4_2 = L4_2[L2_2]
    L5_2 = "auto"
    L3_2(L4_2, L5_2)
  ::lbl_37::
  else
    L3_2 = UpdateCounter
    L3_2()
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "SoundAlert"
    L5_2 = A0_2.sound
    L4_2.id = L5_2
    L3_2(L4_2)
  end
  L3_2 = A0_2.anonymous
  if not L3_2 then
    L3_2 = A0_2.blip
    if L3_2 then
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.action = "AddAlertBlip"
      L5_2 = {}
      L6_2 = A0_2.coords
      L6_2 = L6_2.x
      L5_2.x = L6_2
      L6_2 = A0_2.coords
      L6_2 = L6_2.y
      L5_2.y = L6_2
      L4_2.coords = L5_2
      L5_2 = A0_2.id
      L4_2.id = L5_2
      L5_2 = A0_2.title
      L4_2.title = L5_2
      L3_2(L4_2)
    end
  end
  L3_2 = Shared
  L3_2 = L3_2.Dispatch
  L3_2 = L3_2.AutoBlip
  if true == L3_2 then
    L3_2 = A0_2.blip
    if L3_2 then
      L3_2 = CreateThread
      function L4_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = addBlip
        L1_3 = A0_2.coords
        L2_3 = A0_2.blip
        L3_3 = A0_2.priority
        L4_3 = A0_2.id
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L3_2(L4_2)
    end
  end
  L3_2 = SetTimeout
  L4_2 = L0_1
  L4_2 = L4_2 * 60000
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 1000
  L7_2 = 4500
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 + L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = RemoveAlertById
    L1_3 = A0_2.id
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L8_1(L9_1, L10_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    if L8_2 == A0_2 then
      L1_2 = L6_2
      break
    end
  end
  if L1_2 then
    L2_2 = L3_1
    L2_2 = L1_2 == L2_2
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = L2_1
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = Wait
    L4_2 = 40
    L3_2(L4_2)
    L3_2 = table
    L3_2 = L3_2.sort
    L4_2 = L2_1
    function L5_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.myId
      L3_3 = A1_3.myId
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L3_2(L4_2, L5_2)
    L3_2 = L2_1
    L3_2 = #L3_2
    if L3_2 > 0 then
      if L2_2 then
        L3_2 = L2_1
        L3_2 = #L3_2
        L3_1 = L3_2
        L3_2 = DisplayInUi
        L5_2 = L3_1
        L4_2 = L2_1
        L4_2 = L4_2[L5_2]
        L5_2 = "without"
        L3_2(L4_2, L5_2)
      else
        L3_2 = GetPreviousAlert
        L3_2 = L3_2()
        if L3_2 then
          L4_2 = DisplayInUi
          L5_2 = L3_2
          L6_2 = "without"
          L4_2(L5_2, L6_2)
        end
      end
    else
      L3_2 = 0
      L3_1 = L3_2
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.action = "ClearAlerts"
      L3_2(L4_2)
    end
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "RemoveAlertBlip"
    L4_2.id = A0_2
    L3_2(L4_2)
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    if L3_2 then
      L3_2 = RemoveBlip
      L4_2 = L1_1
      L4_2 = L4_2[A0_2]
      L3_2(L4_2)
      L3_2 = L1_1
      L3_2[A0_2] = nil
    end
  end
end
RemoveAlertById = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "ClearAlerts"
  L0_2(L1_2)
  L0_2 = {}
  L2_1 = L0_2
  L0_2 = pairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L1_1
    L6_2[L4_2] = nil
  end
  L0_2 = {}
  L1_1 = L0_2
end
ClearFullAlerts = L8_1
L8_1 = RegisterNetEvent
L9_1 = "l2s-dispatch:client:AssignUnit"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = pairs
  L4_2 = L2_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    if A0_2 == L9_2 then
      L9_2 = L2_1
      L9_2 = L9_2[L7_2]
      L9_2.assigned = A1_2
      L2_2 = L7_2
      break
    end
  end
  L3_2 = L3_1
  if L2_2 == L3_2 then
    L3_2 = L2_1
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.action = "UpdateUnits"
      L5_2 = L2_1
      L5_2 = L5_2[L2_2]
      L5_2 = L5_2.time
      if not L5_2 then
        L5_2 = false
      end
      L4_2.Time = L5_2
      L4_2.Units = A1_2
      L3_2(L4_2)
    end
  end
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L1_1
  L5_2 = AddBlipForCoord
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2[A3_2] = L5_2
  L4_2 = 255
  L5_2 = L0_1
  L5_2 = L5_2 * 60000
  L5_2 = L5_2 / L4_2
  if A2_2 > 1 then
    L6_2 = SetBlipFlashes
    L7_2 = L1_1
    L7_2 = L7_2[A3_2]
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SetBlipHighDetail
    L7_2 = L1_1
    L7_2 = L7_2[A3_2]
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  L6_2 = SetBlipSprite
  L7_2 = L1_1
  L7_2 = L7_2[A3_2]
  L8_2 = A1_2.sprite
  if not L8_2 then
    L8_2 = 161
  end
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipScale
  L7_2 = L1_1
  L7_2 = L7_2[A3_2]
  L8_2 = A1_2.scale
  if not L8_2 then
    L8_2 = 1.0
  end
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipColour
  L7_2 = L1_1
  L7_2 = L7_2[A3_2]
  L8_2 = A1_2.color
  if not L8_2 then
    L8_2 = 1
  end
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipAlpha
  L7_2 = L1_1
  L7_2 = L7_2[A3_2]
  L8_2 = 255
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipAsShortRange
  L7_2 = L1_1
  L7_2 = L7_2[A3_2]
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipCategory
  L7_2 = L1_1
  L7_2 = L7_2[A3_2]
  L8_2 = 2
  L6_2(L7_2, L8_2)
  L6_2 = BeginTextCommandSetBlipName
  L7_2 = "STRING"
  L6_2(L7_2)
  L6_2 = AddTextComponentString
  L7_2 = A1_2.text
  L6_2(L7_2)
  L6_2 = EndTextCommandSetBlipName
  L7_2 = L1_1
  L7_2 = L7_2[A3_2]
  L6_2(L7_2)
  while L4_2 > 0 do
    L6_2 = L1_1
    L6_2 = L6_2[A3_2]
    if not L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = math
    L6_2 = L6_2.max
    L7_2 = 0
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    L4_2 = L6_2
    L6_2 = SetBlipAlpha
    L7_2 = L1_1
    L7_2 = L7_2[A3_2]
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = L1_1
  L6_2 = L6_2[A3_2]
  if L6_2 then
    L6_2 = RemoveBlip
    L7_2 = L1_1
    L7_2 = L7_2[A3_2]
    L6_2(L7_2)
    L6_2 = L1_1
    L6_2[A3_2] = nil
  end
end
addBlip = L8_1
L8_1 = RegisterNUICallback
L9_1 = "SetUpTimeOut"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = tonumber
    L3_2 = A0_2.value
    L2_2 = L2_2(L3_2)
    if L2_2 > 30 then
      A0_2.value = 30
    end
    L2_2 = tonumber
    L3_2 = A0_2.value
    L2_2 = L2_2(L3_2)
    L0_1 = L2_2
    L2_2 = A0_2.latest
    L6_1 = L2_2
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "sendReply"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "l2s-dispatch:server:SendReply"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "SetCurrentAlert"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = pairs
  L4_2 = L2_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = A0_2.id
    L10_2 = L8_2.id
    if L9_2 == L10_2 then
      L2_2 = L7_2
      break
    end
  end
  if L2_2 then
    L3_2 = L3_1
    if L2_2 ~= L3_2 then
      L3_1 = L2_2
      L3_2 = DisplayInUi
      L5_2 = L3_1
      L4_2 = L2_1
      L4_2 = L4_2[L5_2]
      L5_2 = "update"
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "UpdateAlertBox"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.bool
  L5_1 = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
function L8_1()
  local L0_2, L1_2
  L0_2 = L5_1
  return L0_2
end
AlertsOpened = L8_1
L8_1 = {}
function L9_1(A0_2, A1_2, A2_2, A3_2, ...)
  local L4_2, L5_2, L6_2
  L4_2 = L8_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = L8_1
    L4_2[A0_2] = true
    L4_2 = A3_2
    L5_2, L6_2 = ...
    L4_2(L5_2, L6_2)
    if A1_2 then
      L4_2 = Wait
      L5_2 = A1_2 * 1000
      L4_2(L5_2)
    else
      L4_2 = Wait
      L5_2 = Shared
      L5_2 = L5_2.Dispatch
      L5_2 = L5_2.AlertsDealy
      L5_2 = L5_2 * 1000
      L4_2(L5_2)
    end
    L4_2 = L8_1
    L4_2[A0_2] = false
  elseif A2_2 then
    L4_2 = Notify
    L5_2 = A2_2
    L6_2 = "error"
    L4_2(L5_2, L6_2)
  end
end
WaitTimer = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
isPedAWitness = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "l2s-dispatch:server:SetDispatch"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
ToggleDispatchMode = L9_1
L9_1 = exports
L10_1 = "ToggleDispatchMode"
L11_1 = ToggleDispatchMode
L9_1(L10_1, L11_1)
