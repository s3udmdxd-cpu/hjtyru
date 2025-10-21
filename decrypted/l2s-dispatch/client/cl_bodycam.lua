local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = exports
L1_1 = Shared
L1_1 = L1_1.Settings
L1_1 = L1_1.FrameworkFolder
L0_1 = L0_1[L1_1]
L1_1 = L0_1
L0_1 = L0_1.GetCoreObject
L0_1 = L0_1(L1_1)
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = false
L6_1 = false
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "l2s-dispatch:server:CheckBodyCam"
  L3_2 = false
  L4_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L3_2 = Notify
    L4_2 = Lang
    L5_2 = "Busy_OR_No_Item"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    L3_2(L4_2, L5_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if A0_2 == L3_2 then
    L4_2 = Notify
    L5_2 = Lang
    L6_2 = "WatchUrSelf"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L4_2(L5_2, L6_2)
    L4_2 = false
    return L4_2
  end
  if not L2_2 then
    L4_2 = Notify
    L5_2 = Lang
    L6_2 = "NoPlayer"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L4_2(L5_2, L6_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = OnCamOpen
  L5_2 = true
  L4_2(L5_2)
  L4_2 = Citizen
  L4_2 = L4_2.CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = GetEntityCoords
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L1_3()
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L1_3 = vector4
    L2_3 = L0_3.x
    L3_3 = L0_3.y
    L4_3 = L0_3.z
    L4_3 = L4_3 - 1
    L5_3 = GetEntityHeading
    L6_3 = PlayerPedId
    L6_3, L7_3, L8_3, L9_3 = L6_3()
    L5_3, L6_3, L7_3, L8_3, L9_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L4_1 = L1_3
    L1_3 = A0_2
    L3_1 = L1_3
    L1_3 = ToggleInventory
    L2_3 = false
    L1_3(L2_3)
    L1_3 = DoScreenFadeOut
    L2_3 = 200
    L1_3(L2_3)
    while true do
      L1_3 = IsScreenFadedOut
      L1_3 = L1_3()
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 100
      L1_3(L2_3)
    end
    L1_3 = FreezeEntityPosition
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityVisible
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityCollision
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = false
    L4_3 = false
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = SetEntityInvincible
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = NetworkSetEntityInvisibleToNetwork
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityCoords
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = L2_2.x
    L4_3 = L2_2.y
    L5_3 = L2_2.z
    L5_3 = L5_3 - 100.0
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = Wait
    L2_3 = 500
    L1_3(L2_3)
    L1_3 = GetPlayerFromServerId
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    L2_3 = GetPlayerPed
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L2_1 = L2_3
    L2_3 = CreateCam
    L3_3 = "DEFAULT_SCRIPTED_FLY_CAMERA"
    L4_3 = true
    L2_3 = L2_3(L3_3, L4_3)
    L1_1 = L2_3
    L2_3 = AttachCamToPedBone
    L3_3 = L1_1
    L4_3 = L2_1
    L5_3 = 46240
    L6_3 = 0.1
    L7_3 = 0.025
    L8_3 = 0.1
    L9_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L2_3 = SetCamFov
    L3_3 = L1_1
    L4_3 = 100.0
    L2_3(L3_3, L4_3)
    L2_3 = GetEntityHeading
    L3_3 = L2_1
    L2_3 = L2_3(L3_3)
    L3_3 = true
    L5_1 = L3_3
    L3_3 = SetCamRot
    L4_3 = L1_1
    L5_3 = 0
    L6_3 = 0
    L7_3 = L2_3
    L8_3 = 2
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L3_3 = RenderScriptCams
    L4_3 = true
    L5_3 = false
    L6_3 = 0
    L7_3 = 1
    L8_3 = 0
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L3_3 = ShakeCam
    L4_3 = L1_1
    L5_3 = "HAND_SHAKE"
    L6_3 = 1.0
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = SetCamShakeAmplitude
    L4_3 = L1_1
    L5_3 = 2.0
    L3_3(L4_3, L5_3)
    L3_3 = SetTimecycleModifier
    L4_3 = Shared
    L4_3 = L4_3.Settings
    L4_3 = L4_3.BodyCam
    L4_3 = L4_3.Effect
    L3_3(L4_3)
    L3_3 = SetTimecycleModifierStrength
    L4_3 = Shared
    L4_3 = L4_3.Settings
    L4_3 = L4_3.BodyCam
    L4_3 = L4_3.Strength
    L3_3(L4_3)
    L3_3 = DoScreenFadeIn
    L4_3 = 300
    L3_3(L4_3)
    L3_3 = TriggerServerEvent
    L4_3 = "l2s-dispatch:server:ToggleWatch"
    L5_3 = A0_2
    L3_3(L4_3, L5_3)
    L3_3 = Citizen
    L3_3 = L3_3.CreateThread
    function L4_3()
      local L0_4, L1_4
      L0_4 = SetPlayerNearTarget
      L0_4()
    end
    L3_3(L4_3)
    L3_3 = Citizen
    L3_3 = L3_3.CreateThread
    function L4_3()
      local L0_4, L1_4
      L0_4 = SetCamRotation
      L0_4()
    end
    L3_3(L4_3)
  end
  L4_2(L5_2)
  L4_2 = true
  return L4_2
end
StartWatching = L7_1
L7_1 = false
L8_1 = RegisterNetEvent
L9_1 = "l2s-dispatch:client:CheckingItem"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L7_1 = A0_2
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = L7_1
      if not L0_3 then
        break
      end
      L0_3 = HasItem
      L1_3 = Shared
      L1_3 = L1_3.Settings
      L1_3 = L1_3.BodyCam
      L1_3 = L1_3.Item
      L0_3 = L0_3(L1_3)
      if false == L0_3 then
        L1_3 = false
        L7_1 = L1_3
        L1_3 = TriggerServerEvent
        L2_3 = "l2s-dispatch:server:StopBodyCam"
        L3_3 = tonumber
        L4_3 = A1_2
        L3_3, L4_3 = L3_3(L4_3)
        L1_3(L2_3, L3_3, L4_3)
        break
      end
      L1_3 = Wait
      L2_3 = 2500
      L1_3(L2_3)
    end
  end
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "l2s-dispatch:client:StopBodyCam"
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = QuitBodyCam
    L0_2()
    L0_2 = Notify
    L1_2 = Lang
    L2_2 = "LostSignal"
    L1_2 = L1_2(L2_2)
    L2_2 = "error"
    L0_2(L1_2, L2_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "l2s-dispatch:client:startRec"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "toggle_record"
  L3_2.hook = A0_2
  L3_2.service = A1_2
  L4_2 = Shared
  L4_2 = L4_2.Settings
  L4_2 = L4_2.Recordings
  L4_2 = L4_2.RecordTime
  L3_2.recTiming = L4_2
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "l2s-dispatch:client:openRecords"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = PlayWatchAnim
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "show_records"
  L4_2.recordData = A0_2
  L4_2.jobTitle = A1_2
  L4_2.isBoss = A2_2
  L3_2(L4_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "l2s-dispatch:client:refreshRecords"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "refreshrec"
  L3_2.recordData = A0_2
  L3_2.isBoss = A1_2
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "StartWatching"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = print
    L3_2 = A0_2.targetId
    L2_2(L3_2)
    L2_2 = StartWatching
    L3_2 = A0_2.targetId
    L2_2 = L2_2(L3_2)
    L3_2 = A1_2
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "exitBodyCam"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L5_1
  if L2_2 then
    L2_2 = QuitBodyCam
    L2_2()
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "cancel_rec_force"
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "videoLog"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = A0_2.vidurl
    L3_2 = GetEntityCoords
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.action = "AddVideoLog"
    L5_2.link = L2_2
    L6_2 = A0_2.location
    if not L6_2 then
      L6_2 = "Unknown"
    end
    L5_2.location = L6_2
    L6_2 = A0_2.camName
    if not L6_2 then
      L6_2 = "Unknown"
    end
    L5_2.camName = L6_2
    L4_2(L5_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "deleteVideo"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = A0_2.vidurl
    L3_2 = TriggerServerEvent
    L4_2 = "l2s-dispatch:server:deleteVideoDB"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = L5_1
    if not L0_2 then
      break
    end
    L0_2 = SetCamRot
    L1_2 = L1_1
    L2_2 = 0
    L3_2 = 0
    L4_2 = GetEntityHeading
    L5_2 = L2_1
    L4_2 = L4_2(L5_2)
    L5_2 = 2
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = Wait
    L1_2 = 1
    L0_2(L1_2)
  end
end
SetCamRotation = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L0_2 = L5_1
    if not L0_2 then
      break
    end
    L0_2 = GetEntityCoords
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L1_2 = DoesEntityExist
    L2_2 = L2_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = L2_1
      L1_2 = L1_2(L2_2)
      L2_2 = L0_2 - L1_2
      L2_2 = #L2_2
      L3_2 = 150
      if L2_2 > L3_2 then
        L3_2 = SetEntityCoords
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = L1_2.x
        L6_2 = L1_2.y
        L7_2 = L1_2.z
        L7_2 = L7_2 - 100.0
        L8_2 = false
        L9_2 = false
        L10_2 = false
        L11_2 = true
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      end
    else
      L1_2 = QuitBodyCam
      L1_2()
    end
    L1_2 = Wait
    L2_2 = 2500
    L1_2(L2_2)
  end
end
SetPlayerNearTarget = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DoScreenFadeOut
  L1_2 = 350
  L0_2(L1_2)
  while true do
    L0_2 = IsScreenFadedOut
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = OnCamOpen
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetEntityVisible
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetEntityCollision
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetEntityInvincible
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = NetworkSetEntityInvisibleToNetwork
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetEntityCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L4_1.x
  L3_2 = L4_1.y
  L4_2 = L4_1.z
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = SetEntityHeading
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L4_1.w
  L0_2(L1_2, L2_2)
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = 1
  L5_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = SetTimecycleModifier
  L1_2 = "default"
  L0_2(L1_2)
  L0_2 = SetTimecycleModifierStrength
  L1_2 = 1.0
  L0_2(L1_2)
  L0_2 = false
  L5_1 = L0_2
  L0_2 = DoScreenFadeIn
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = ToggleInventory
  L1_2 = true
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "l2s-dispatch:server:StopWatching"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closeBodyCam"
  L0_2(L1_2)
end
QuitBodyCam = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = print
  L1_2 = "quittt2"
  L0_2(L1_2)
  L0_2 = SetEntityVisible
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetEntityCollision
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetEntityInvincible
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = NetworkSetEntityInvisibleToNetwork
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetEntityCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L4_1.x
  L3_2 = L4_1.y
  L4_2 = L4_1.z
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = SetEntityHeading
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L4_1.w
  L0_2(L1_2, L2_2)
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = 1
  L5_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = SetTimecycleModifier
  L1_2 = "default"
  L0_2(L1_2)
  L0_2 = SetTimecycleModifierStrength
  L1_2 = 1.0
  L0_2(L1_2)
  L0_2 = ToggleInventory
  L1_2 = true
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closeBodyCam"
  L0_2(L1_2)
end
ForceQuitBodyCam = L8_1
L8_1 = AddEventHandler
L9_1 = "onResourceStop"
function L10_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 == A0_2 then
    L1_2 = L5_1
    if L1_2 then
      L1_2 = ForceQuitBodyCam
      L1_2()
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "ForceQuitBodyCam"
L10_1 = ForceQuitBodyCam
L8_1(L9_1, L10_1)
