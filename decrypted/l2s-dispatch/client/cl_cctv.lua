local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1
L0_1 = exports
L1_1 = Shared
L1_1 = L1_1.Settings
L1_1 = L1_1.FrameworkFolder
L0_1 = L0_1[L1_1]
L1_1 = L0_1
L0_1 = L0_1.GetCoreObject
L0_1 = L0_1(L1_1)
L1_1 = 0
L2_1 = 0
L3_1 = 0
L4_1 = 0
L5_1 = 0
L6_1 = 70.0
L7_1 = 5.0
L8_1 = 10.0
L9_1 = 8.0
L10_1 = 8.0
L11_1 = false
L12_1 = false
L13_1 = 69.9
L14_1 = false
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DestroyCam
  L1_2 = L5_1
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = RenderScriptCams
  L1_2 = 0
  L2_2 = 0
  L3_2 = 1
  L4_2 = 1
  L5_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = 0
  L5_1 = L0_2
  L0_2 = false
  L14_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "cancel_rec_force"
  L0_2(L1_2)
  L0_2 = ClearTimecycleModifier
  L1_2 = Shared
  L1_2 = L1_2.Settings
  L1_2 = L1_2.CCTV
  L1_2 = L1_2.Effect
  L0_2(L1_2)
  L0_2 = SetFocusEntity
  L1_2 = GetPlayerPed
  L2_2 = PlayerId
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = FreezeEntityPosition
  L1_2 = GetPlayerPed
  L2_2 = PlayerId
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetNightvision
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetSeethrough
  L1_2 = false
  L0_2(L1_2)
end
function L16_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L5_1
  if 0 ~= L4_2 then
    L4_2 = DestroyCam
    L5_2 = L5_1
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = 0
    L5_1 = L4_2
    L4_2 = DestroyAllCams
    L5_2 = true
    L4_2(L5_2)
  end
  L4_2 = CreateCam
  L5_2 = "DEFAULT_SCRIPTED_CAMERA"
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = SetCamCoord
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetCamRot
  L6_2 = L4_2
  L7_2 = A3_2.x
  L8_2 = A3_2.y
  L9_2 = A3_2.z
  L10_2 = 2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = SetCamFov
  L6_2 = L4_2
  L7_2 = L13_1
  L5_2(L6_2, L7_2)
  L5_2 = RenderScriptCams
  L6_2 = 1
  L7_2 = 0
  L8_2 = 0
  L9_2 = 1
  L10_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = Wait
  L6_2 = 250
  L5_2(L6_2)
  L5_1 = L4_2
end
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetPlayerPed
  L2_2 = -1
  L1_2 = L1_2(L2_2)
  L2_2 = IsControlJustPressed
  L3_2 = 0
  L4_2 = 241
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = math
    L2_2 = L2_2.max
    L3_2 = L13_1
    L4_2 = L8_1
    L3_2 = L3_2 - L4_2
    L4_2 = L7_1
    L2_2 = L2_2(L3_2, L4_2)
    L13_1 = L2_2
  end
  L2_2 = IsControlJustPressed
  L3_2 = 0
  L4_2 = 242
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = math
    L2_2 = L2_2.min
    L3_2 = L13_1
    L4_2 = L8_1
    L3_2 = L3_2 + L4_2
    L4_2 = L6_1
    L2_2 = L2_2(L3_2, L4_2)
    L13_1 = L2_2
  end
  L2_2 = GetCamFov
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = L13_1
  L4_2 = L4_2 - L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = 0.1
  if L3_2 < L4_2 then
    L13_1 = L2_2
  end
  L3_2 = SetCamFov
  L4_2 = A0_2
  L5_2 = L13_1
  L5_2 = L5_2 - L2_2
  L5_2 = L5_2 * 0.05
  L5_2 = L2_2 + L5_2
  L3_2(L4_2, L5_2)
end
L18_1 = 0
L19_1 = 0
L20_1 = 0.8
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L0_2 = L0_2 / 1000
  L1_2 = L19_1
  if 1 == L1_2 then
    L1_2 = L18_1
    L1_2 = L0_2 - L1_2
    L2_2 = L20_1
    if L1_2 <= L2_2 then
      L1_2 = 0
      L19_1 = L1_2
      L1_2 = 0
      L18_1 = L1_2
      L1_2 = true
      return L1_2
  end
  else
    L1_2 = L19_1
    if 0 == L1_2 then
      L1_2 = 1
      L19_1 = L1_2
      L18_1 = L0_2
    else
      L1_2 = L18_1
      L1_2 = L0_2 - L1_2
      L2_2 = L20_1
      if L1_2 > L2_2 then
        L1_2 = 1
        L19_1 = L1_2
        L18_1 = L0_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
isDoubleClick = L21_1
L21_1 = CreateThread
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  while true do
    L0_2 = 2000
    L1_2 = L5_1
    if 0 ~= L1_2 then
      L0_2 = 5
      L1_2 = SetTimecycleModifier
      L2_2 = Shared
      L2_2 = L2_2.Settings
      L2_2 = L2_2.CCTV
      L2_2 = L2_2.Effect
      L1_2(L2_2)
      L1_2 = SetTimecycleModifierStrength
      L2_2 = Shared
      L2_2 = L2_2.Settings
      L2_2 = L2_2.CCTV
      L2_2 = L2_2.Strength
      L1_2(L2_2)
      L1_2 = L6_1
      L2_2 = L7_1
      L1_2 = L1_2 - L2_2
      L2_2 = 1.0
      L1_2 = L2_2 / L1_2
      L2_2 = L13_1
      L3_2 = L7_1
      L2_2 = L2_2 - L3_2
      L1_2 = L1_2 * L2_2
      L2_2 = L17_1
      L3_2 = L5_1
      L2_2(L3_2)
      L2_2 = GetCamRot
      L3_2 = L5_1
      L4_2 = 2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = GetDisabledControlNormal
      L4_2 = 0
      L5_2 = 1
      L3_2 = L3_2(L4_2, L5_2)
      L3_2 = L3_2 * 8.0
      L4_2 = GetDisabledControlNormal
      L5_2 = 0
      L6_2 = 2
      L4_2 = L4_2(L5_2, L6_2)
      L4_2 = L4_2 * 8.0
      L5_2 = Shared
      L5_2 = L5_2.SecurityCameras
      L6_2 = L2_1
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.canRotate
      if L5_2 then
        L5_2 = L2_2.x
        L5_2 = L5_2 - L4_2
        L6_2 = L2_2.z
        L6_2 = L6_2 - L3_2
        L7_2 = math
        L7_2 = L7_2.max
        L8_2 = math
        L8_2 = L8_2.min
        L9_2 = L5_2
        L10_2 = 0.0
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = -50.0
        L7_2 = L7_2(L8_2, L9_2)
        L5_2 = L7_2
        L7_2 = SetCamRot
        L8_2 = L5_1
        L9_2 = L5_2
        L10_2 = 0.0
        L11_2 = L6_2
        L12_2 = 2
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
    L1_2 = Wait
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L21_1(L22_1)
L21_1 = RegisterNetEvent
L22_1 = "l2s-dispatch:client:ActiveCamera"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.locate
  L1_2 = L1_2 + 1
  L2_1 = L1_2
  L1_2 = A0_2.camnumber
  L1_2 = L1_2 + 1
  L3_1 = L1_2
  L1_2 = A0_2.close
  if L1_2 then
    L2_2 = DoScreenFadeOut
    L3_2 = 250
    L2_2(L3_2)
    while true do
      L2_2 = IsScreenFadedOut
      L2_2 = L2_2()
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = L15_1
    L2_2()
    L2_2 = OnCamOpen
    L3_2 = false
    L2_2(L3_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "closeCams"
    L3_2.time = 200
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 200
    L2_2(L3_2)
    L2_2 = DoScreenFadeIn
    L3_2 = 250
    L2_2(L3_2)
  else
    L2_2 = Shared
    L2_2 = L2_2.SecurityCameras
    L3_2 = L2_1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.cams
    L3_2 = L3_1
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = FreezeEntityPosition
      L3_2 = GetPlayerPed
      L4_2 = PlayerId
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = DoScreenFadeOut
      L3_2 = 250
      L2_2(L3_2)
      while true do
        L2_2 = IsScreenFadedOut
        L2_2 = L2_2()
        if L2_2 then
          break
        end
        L2_2 = Wait
        L3_2 = 0
        L2_2(L3_2)
      end
      L2_2 = Shared
      L2_2 = L2_2.SecurityCameras
      L3_2 = L2_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.cams
      L3_2 = L3_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.x
      L3_2 = Shared
      L3_2 = L3_2.SecurityCameras
      L4_2 = L2_1
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.cams
      L4_2 = L3_1
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.y
      L4_2 = Shared
      L4_2 = L4_2.SecurityCameras
      L5_2 = L2_1
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.cams
      L5_2 = L3_1
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.z
      L5_2 = Shared
      L5_2 = L5_2.SecurityCameras
      L6_2 = L2_1
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.cams
      L6_2 = L3_1
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.r
      L6_2 = SetFocusArea
      L7_2 = L2_2
      L8_2 = L3_2
      L9_2 = L4_2
      L10_2 = L2_2
      L11_2 = L3_2
      L12_2 = L4_2
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L6_2 = OnCamOpen
      L7_2 = true
      L6_2(L7_2)
      L6_2 = 69.9
      L13_1 = L6_2
      L6_2 = L16_1
      L7_2 = L2_2
      L8_2 = L3_2
      L9_2 = L4_2
      L10_2 = L5_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = DoScreenFadeIn
      L7_2 = 250
      L6_2(L7_2)
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNUICallback
L22_1 = "OpenCam"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Shared
  L2_2 = L2_2.SecurityCameras
  L3_2 = A0_2.locate
  L3_2 = L3_2 + 1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = A0_2.locate
    L2_2 = L2_2 + 1
    L2_1 = L2_2
    L2_2 = GetStreetAndZone
    L3_2 = Shared
    L3_2 = L3_2.SecurityCameras
    L4_2 = L2_1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.location
    L3_2 = L3_2.x
    L4_2 = Shared
    L4_2 = L4_2.SecurityCameras
    L5_2 = L2_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.location
    L4_2 = L4_2.y
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    L4_2 = TriggerEvent
    L5_2 = "l2s-dispatch:client:ActiveCamera"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = A1_2
    L5_2 = {}
    L6_2 = Shared
    L6_2 = L6_2.SecurityCameras
    L7_2 = L2_1
    L6_2 = L6_2[L7_2]
    L5_2.caminfo = L6_2
    L5_2.street = L2_2
    L5_2.zone = L3_2
    L6_2 = L14_1
    L5_2.radar = L6_2
    L4_2(L5_2)
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNUICallback
L22_1 = "showcams"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.group
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "showcamss"
  L5_2 = Shared
  L5_2 = L5_2.SecurityCameras
  L4_2.cams = L5_2
  L4_2.typing = L2_2
  L3_2(L4_2)
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNUICallback
L22_1 = "Gettablecams"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Shared
  L2_2 = L2_2.SecurityCameras
  L3_2 = A0_2.cam
  L3_2 = L3_2 + 1
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = A1_2
    L3_2 = Shared
    L3_2 = L3_2.SecurityCameras
    L4_2 = A0_2.cam
    L4_2 = L4_2 + 1
    L3_2 = L3_2[L4_2]
    L2_2(L3_2)
  else
    L2_2 = print
    L3_2 = "cam locate not found !!"
    L2_2(L3_2)
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNUICallback
L22_1 = "GetAllCameras"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Shared
  L3_2 = L3_2.SecurityCameras
  L2_2(L3_2)
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNUICallback
L22_1 = "getallcams"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Shared
  L3_2 = L3_2.SecurityCameras
  L2_2(L3_2)
end
L21_1(L22_1, L23_1)
L21_1 = CreateThread
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2
  L0_2 = 0
  L1_2 = nil
  L2_2 = false
  L3_2 = ""
  L4_2 = 0
  L5_2 = 8000
  while true do
    L6_2 = Wait
    L7_2 = 5
    L6_2(L7_2)
    L6_2 = L5_1
    if 0 ~= L6_2 then
      L6_2 = L14_1
      if L6_2 then
        L6_2 = RayCastGamePlayCamera
        L7_2 = 200.0
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        if 0 ~= L8_2 then
          L9_2 = GetEntityType
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if 2 == L9_2 then
            L9_2 = GetPlate
            L10_2 = L8_2
            L9_2 = L9_2(L10_2)
            L10_2 = GetVehicleName
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            L11_2 = GetGameTimer
            L11_2 = L11_2()
            if L9_2 ~= L3_2 then
              L12_2 = SendNUIMessage
              L13_2 = {}
              L13_2.action = "VehicleRadar"
              L13_2.name = L10_2
              L13_2.plate = L9_2
              L12_2(L13_2)
              L2_2 = true
              L3_2 = L9_2
            end
            L0_2 = L8_2
            L1_2 = 2
            L12_2 = IsDisabledControlJustReleased
            L13_2 = 0
            L14_2 = 24
            L12_2 = L12_2(L13_2, L14_2)
            if L12_2 then
              L12_2 = isDoubleClick
              L12_2 = L12_2()
              if L12_2 then
                L12_2 = L11_2 - L4_2
                if L5_2 < L12_2 then
                  L4_2 = L11_2
                  L12_2 = lib
                  L12_2 = L12_2.callback
                  L12_2 = L12_2.await
                  L13_2 = "l2s-dispatch:server:CheckVehicle"
                  L14_2 = false
                  L15_2 = L9_2
                  L12_2 = L12_2(L13_2, L14_2, L15_2)
                  L13_2 = GetStreetAndZone
                  L14_2 = Shared
                  L14_2 = L14_2.SecurityCameras
                  L15_2 = L2_1
                  L14_2 = L14_2[L15_2]
                  L14_2 = L14_2.location
                  L14_2 = L14_2.x
                  L15_2 = Shared
                  L15_2 = L15_2.SecurityCameras
                  L16_2 = L2_1
                  L15_2 = L15_2[L16_2]
                  L15_2 = L15_2.location
                  L15_2 = L15_2.y
                  L13_2, L14_2 = L13_2(L14_2, L15_2)
                  if L12_2 then
                    L15_2 = SendNUIMessage
                    L16_2 = {}
                    L16_2.action = "checkingVehicle"
                    L17_2 = {}
                    L18_2 = L12_2.vehicle
                    L17_2.vehicle = L18_2
                    L17_2.plate = L9_2
                    L17_2.flagged = true
                    L18_2 = L12_2.officer
                    L17_2.officer = L18_2
                    L18_2 = L12_2.priority
                    L17_2.priority = L18_2
                    L18_2 = L12_2.date
                    L17_2.fdate = L18_2
                    L16_2.data = L17_2
                    L15_2(L16_2)
                    L15_2 = AddNewLog
                    L16_2 = string
                    L16_2 = L16_2.format
                    L17_2 = Lang
                    L18_2 = "Flagged_Vehicle_Scanned"
                    L17_2 = L17_2(L18_2)
                    L18_2 = L9_2
                    L19_2 = L13_2
                    L16_2 = L16_2(L17_2, L18_2, L19_2)
                    L17_2 = "<div class=\"report-details\">"
                    L18_2 = Lang
                    L19_2 = "Report_Details"
                    L18_2 = L18_2(L19_2)
                    L19_2 = "<ul>"
                    L20_2 = "<li><b>"
                    L21_2 = Lang
                    L22_2 = "Vehicle"
                    L21_2 = L21_2(L22_2)
                    L22_2 = "</b> "
                    L23_2 = L12_2.vehicle
                    L24_2 = "</li>"
                    L25_2 = "<li><b>"
                    L26_2 = Lang
                    L27_2 = "Plate"
                    L26_2 = L26_2(L27_2)
                    L27_2 = "</b> "
                    L28_2 = L9_2
                    L29_2 = "</li>"
                    L30_2 = "<li><b>"
                    L31_2 = Lang
                    L32_2 = "Reason"
                    L31_2 = L31_2(L32_2)
                    L32_2 = "</b> "
                    L33_2 = L12_2.reason
                    L34_2 = "</li>"
                    L35_2 = "<li><b>"
                    L36_2 = Lang
                    L37_2 = "Officer"
                    L36_2 = L36_2(L37_2)
                    L37_2 = "</b> "
                    L38_2 = L12_2.officer
                    L39_2 = "</li>"
                    L40_2 = "<li><b>"
                    L41_2 = Lang
                    L42_2 = "Priority"
                    L41_2 = L41_2(L42_2)
                    L42_2 = "</b> "
                    L43_2 = L12_2.priority
                    L44_2 = "</li>"
                    L45_2 = "</ul>"
                    L46_2 = "</div>"
                    L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2 .. L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2 .. L39_2 .. L40_2 .. L41_2 .. L42_2 .. L43_2 .. L44_2 .. L45_2 .. L46_2
                    L18_2 = {}
                    L19_2 = {}
                    L19_2.icon = "fas fa-map-marker-alt"
                    L19_2.text = L14_2
                    L18_2[1] = L19_2
                    L19_2 = L12_2.priority
                    L20_2 = false
                    L21_2 = L12_2.date
                    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                    L15_2 = SendNUIMessage
                    L16_2 = {}
                    L16_2.action = "CamNotify"
                    L17_2 = Lang
                    L18_2 = "Vehicle_Scanned"
                    L17_2 = L17_2(L18_2)
                    L16_2.msg = L17_2
                    L16_2.timeout = 2000
                    L15_2(L16_2)
                  else
                    L15_2 = SendNUIMessage
                    L16_2 = {}
                    L16_2.action = "checkingVehicle"
                    L17_2 = {}
                    L17_2.vehicle = L10_2
                    L17_2.plate = L9_2
                    L17_2.flagged = false
                    L17_2.officer = false
                    L17_2.priority = false
                    L17_2.fdate = false
                    L16_2.data = L17_2
                    L15_2(L16_2)
                    L15_2 = AddNewLog
                    L16_2 = string
                    L16_2 = L16_2.format
                    L17_2 = Lang
                    L18_2 = "Vehicle_Scanned_Report"
                    L17_2 = L17_2(L18_2)
                    L18_2 = L9_2
                    L19_2 = L13_2
                    L20_2 = L14_2
                    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
                    L17_2 = "<div class=\"report-details\">"
                    L18_2 = Lang
                    L19_2 = "Report_Details"
                    L18_2 = L18_2(L19_2)
                    L19_2 = "<ul>"
                    L20_2 = "<li><b>"
                    L21_2 = Lang
                    L22_2 = "Plate"
                    L21_2 = L21_2(L22_2)
                    L22_2 = "</b> "
                    L23_2 = L9_2
                    L24_2 = "</li>"
                    L25_2 = "<li><b>"
                    L26_2 = Lang
                    L27_2 = "Vehicle_Inspected"
                    L26_2 = L26_2(L27_2)
                    L27_2 = "</b></li>"
                    L28_2 = "</ul>"
                    L29_2 = "</div>"
                    L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2
                    L18_2 = {}
                    L19_2 = {}
                    L19_2.icon = "fas fa-map-marker-alt"
                    L19_2.text = L14_2
                    L18_2[1] = L19_2
                    L19_2 = "normal"
                    L20_2 = false
                    L21_2 = false
                    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                    L15_2 = SendNUIMessage
                    L16_2 = {}
                    L16_2.action = "CamNotify"
                    L17_2 = Lang
                    L18_2 = "Vehicle_Scanned"
                    L17_2 = L17_2(L18_2)
                    L16_2.msg = L17_2
                    L16_2.timeout = 2000
                    L15_2(L16_2)
                  end
                else
                  L12_2 = SendNUIMessage
                  L13_2 = {}
                  L13_2.action = "CamNotify"
                  L14_2 = Lang
                  L15_2 = "Wait_Between_Checks"
                  L14_2 = L14_2(L15_2)
                  L13_2.msg = L14_2
                  L12_2(L13_2)
                end
              end
            end
        end
        elseif L2_2 then
          L9_2 = SendNUIMessage
          L10_2 = {}
          L10_2.action = "VehicleRadar"
          L10_2.plate = false
          L9_2(L10_2)
          L2_2 = false
          L3_2 = ""
        end
      else
        L0_2 = 0
        if L2_2 then
          L6_2 = SendNUIMessage
          L7_2 = {}
          L7_2.action = "VehicleRadar"
          L7_2.plate = false
          L6_2(L7_2)
          L2_2 = false
          L3_2 = ""
        else
        end
      end
    else
      L6_2 = Wait
      L7_2 = 1100
      L6_2(L7_2)
    end
  end
end
L21_1(L22_1)
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
RotationToDirection = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetCamRot
  L2_2 = L5_1
  L1_2 = L1_2(L2_2)
  L2_2 = GetCamCoord
  L3_2 = L5_1
  L2_2 = L2_2(L3_2)
  L3_2 = RotationToDirection
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L6_2 = L3_2.y
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L2_2.z
  L6_2 = L3_2.z
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.z = L5_2
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = -1
  L14_2 = PlayerPedId
  L14_2 = L14_2()
  L15_2 = 0
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
RayCastGamePlayCamera = L21_1
L21_1 = RegisterNUICallback
L22_1 = "ActiveRadar"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L14_1
  L2_2 = not L2_2
  L14_1 = L2_2
  L2_2 = A1_2
  L3_2 = L14_1
  L2_2(L3_2)
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNUICallback
L22_1 = "Vision"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.vision
  if "NGTV" == L2_2 then
    L2_2 = SetNightvision
    L3_2 = true
    L2_2(L3_2)
    L2_2 = SetSeethrough
    L3_2 = false
    L2_2(L3_2)
    L2_2 = A1_2
    L3_2 = {}
    L4_2 = A0_2.vision
    L3_2.vision = L4_2
    L3_2.bool = true
    L2_2(L3_2)
  else
    L2_2 = A0_2.vision
    if "THRML" == L2_2 then
      L2_2 = SetNightvision
      L3_2 = false
      L2_2(L3_2)
      L2_2 = SetSeethrough
      L3_2 = true
      L2_2(L3_2)
      L2_2 = A1_2
      L3_2 = {}
      L4_2 = A0_2.vision
      L3_2.vision = L4_2
      L3_2.bool = true
      L2_2(L3_2)
    else
      L2_2 = SetNightvision
      L3_2 = false
      L2_2(L3_2)
      L2_2 = SetSeethrough
      L3_2 = false
      L2_2(L3_2)
      L2_2 = A1_2
      L3_2 = {}
      L4_2 = A0_2.vision
      L3_2.vision = L4_2
      L3_2.bool = true
      L2_2(L3_2)
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNUICallback
L22_1 = "GetVision"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetUsingnightvision
  L2_2 = L2_2()
  L3_2 = SeethroughGetMaxThickness
  L3_2 = L3_2()
  L4_2 = A1_2
  L5_2 = {}
  L5_2.NGTV = L2_2
  L5_2.THRML = L3_2
  L4_2(L5_2)
end
L21_1(L22_1, L23_1)
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = false
  L4_2 = A2_2
  L5_2 = pairs
  L6_2 = Shared
  L6_2 = L6_2.SecurityCameras
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = vector2
    L12_2 = A0_2
    L13_2 = A1_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = vector2
    L13_2 = L10_2.location
    L13_2 = L13_2.x
    L14_2 = L10_2.location
    L14_2 = L14_2.y
    L12_2 = L12_2(L13_2, L14_2)
    L11_2 = L11_2 - L12_2
    L11_2 = #L11_2
    if L4_2 > L11_2 then
      L4_2 = L11_2
      L3_2 = L9_2
    end
  end
  return L3_2
end
GetNearestCamera = L21_1
L21_1 = exports
L22_1 = "GetNearestCamera"
L23_1 = GetNearestCamera
L21_1(L22_1, L23_1)
L21_1 = exports
L22_1 = "CloseCCTVCamera"
function L23_1()
  local L0_2, L1_2
  L0_2 = L15_1
  L0_2()
  L0_2 = DoScreenFadeOut
  L1_2 = 250
  L0_2(L1_2)
  while true do
    L0_2 = IsScreenFadedOut
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = L15_1
  L0_2()
  L0_2 = OnCamOpen
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closeCams"
  L1_2.time = 200
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 200
  L0_2(L1_2)
  L0_2 = DoScreenFadeIn
  L1_2 = 250
  L0_2(L1_2)
end
L21_1(L22_1, L23_1)
