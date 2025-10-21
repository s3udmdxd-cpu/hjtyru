local L0_1, L1_1, L2_1, L3_1
L0_1 = GetInvokingResource
L0_1 = L0_1()
if not L0_1 then
  L0_1 = GetCurrentResourceName
  L0_1 = L0_1()
end
L1_1 = "l2s-dispatch_qb"
L2_1 = {}
L2_1.DB = "https://raw.githubusercontent.com/L2sDev/main/main/versions.json"
Version = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetResourceMetadata
  L1_2 = L0_1
  L2_2 = "version"
  L0_2 = L0_2(L1_2, L2_2)
  ver = L0_2
  L0_2 = PerformHttpRequest
  L1_2 = Version
  L1_2 = L1_2.DB
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L3_3 = json
    L3_3 = L3_3.decode
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    L4_3 = pairs
    L5_3 = L3_3
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = L9_3.script
      L11_3 = L1_1
      if L10_3 == L11_3 then
        L10_3 = ver
        L11_3 = L9_3.version
        if L10_3 ~= L11_3 then
          L10_3 = "^3[L2S DEV] v%s is available for ^5%s^3 (current version: %s)\r\nDownload it here: ^5%s^7"
          L11_3 = print
          L13_3 = L10_3
          L12_3 = L10_3.format
          L14_3 = ver
          L15_3 = L0_1
          L16_3 = L9_3.version
          L17_3 = "https://keymaster.fivem.net/"
          L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
          L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          break
        end
      end
    end
  end
  L0_2(L1_2, L2_2)
end
VersionCheck = L2_1
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetCurrentResourceName
  L0_2 = L0_2()
  if "l2s-dispatch" ~= L0_2 then
    L0_2 = print
    L1_2 = "^1 Dont Change Script Name !!^0"
    L0_2(L1_2)
    L0_2 = os
    L0_2 = L0_2.exit
    L0_2()
  else
    L0_2 = print
    L1_2 = "^5[L2S Dispatch] ^6Started ^7 Made By : [discord.gg/l2s] version:^5 "
    L2_2 = GetResourceMetadata
    L3_2 = L0_1
    L4_2 = "version"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = "   ^0"
    L1_2 = L1_2 .. L2_2 .. L3_2
    L0_2(L1_2)
    L0_2 = VersionCheck
    L0_2()
  end
end
L2_1(L3_1)
