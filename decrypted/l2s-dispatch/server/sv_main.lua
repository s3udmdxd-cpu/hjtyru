local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = exports
L1_1 = Shared
L1_1 = L1_1.Settings
L1_1 = L1_1.FrameworkFolder
L0_1 = L0_1[L1_1]
L1_1 = L0_1
L0_1 = L0_1.GetCoreObject
L0_1 = L0_1(L1_1)
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = 0
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = Logs
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2[A0_2]
  L5_2 = {}
  L6_2 = #A3_2
  L6_2 = L6_2 + 1
  L7_2 = {}
  L7_2.name = ""
  L7_2.value = "-# Made With <:heart:1249426866222268446> By [l2s.dev](https://l2s.dev/) "
  L7_2.inline = false
  A3_2[L6_2] = L7_2
  L6_2 = {}
  L7_2 = {}
  L7_2.color = 15019070
  L8_2 = "Log - "
  L9_2 = A1_2
  L8_2 = L8_2 .. L9_2
  L7_2.title = L8_2
  L7_2.description = A2_2
  L7_2.fields = A3_2
  L8_2 = {}
  L9_2 = os
  L9_2 = L9_2.date
  L10_2 = "%c"
  L9_2 = L9_2(L10_2)
  L8_2.text = L9_2
  L8_2.icon_url = "https://assets.dev.l2s.dev/l2s/images/l2s-white.png"
  L7_2.footer = L8_2
  L6_2[1] = L7_2
  L5_2 = L6_2
  L6_2 = PerformHttpRequest
  L7_2 = L4_2
  function L8_2(A0_3, A1_3, A2_3)
  end
  L9_2 = "POST"
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = {}
  L11_2.username = "L2S DISPATCH"
  L11_2.avatar_url = "https://assets.dev.l2s.dev/l2s/images/l2s-white.png"
  L11_2.embeds = L5_2
  L10_2 = L10_2(L11_2)
  L11_2 = {}
  L11_2["Content-Type"] = "application/json"
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = {}
  L2_2 = Logs
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.Status
  L2_2 = L2_2.Webhook
  L3_2 = "POST"
  L4_2 = Logs
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.Status
  L4_2 = L4_2.MSG_ID
  if L4_2 then
    L3_2 = "PATCH"
    L4_2 = L2_2
    L5_2 = "/messages/"
    L6_2 = Logs
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.Status
    L6_2 = L6_2.MSG_ID
    L4_2 = L4_2 .. L5_2 .. L6_2
    L2_2 = L4_2
  end
  L4_2 = {}
  L5_2 = 0
  L6_2 = 0
  L7_2 = ""
  L8_2 = L1_1
  L8_2 = L8_2[A0_2]
  if L8_2 then
    L8_2 = next
    L9_2 = L1_1
    L9_2 = L9_2[A0_2]
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = pairs
      L9_2 = L1_1
      L9_2 = L9_2[A0_2]
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = "\240\159\159\162"
        L15_2 = L13_2.duty
        if L15_2 then
          L15_2 = L13_2.busy
          if L15_2 then
            L14_2 = "\240\159\159\161"
          end
        else
          L14_2 = "\240\159\148\180"
        end
        L15_2 = ""
        L16_2 = L13_2.dispatch
        if L16_2 then
          L15_2 = "\240\159\143\179\239\184\143"
        end
        L16_2 = L7_2
        L17_2 = L14_2
        L18_2 = " ["
        L19_2 = L13_2.callsign
        L20_2 = "] "
        L21_2 = L13_2.name
        L22_2 = " "
        L23_2 = L15_2
        L24_2 = "  \n"
        L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2
        L7_2 = L16_2
        L16_2 = L13_2.duty
        if true == L16_2 then
          L5_2 = L5_2 + 1
        else
          L6_2 = L6_2 + 1
        end
      end
    end
  end
  if "" == L7_2 then
    L8_2 = Lang
    L9_2 = "No_Units"
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
  end
  L8_2 = #L4_2
  L8_2 = L8_2 + 1
  L9_2 = {}
  L10_2 = Lang
  L11_2 = "Units"
  L10_2 = L10_2(L11_2)
  L9_2.name = L10_2
  L10_2 = "```"
  L11_2 = L7_2
  L12_2 = "```"
  L10_2 = L10_2 .. L11_2 .. L12_2
  L9_2.value = L10_2
  L9_2.inline = false
  L4_2[L8_2] = L9_2
  L8_2 = #L4_2
  L8_2 = L8_2 + 1
  L9_2 = {}
  L9_2.name = ""
  L9_2.value = "-# Made With <:heart:1249426866222268446> By [l2s.dev](https://l2s.dev/) "
  L9_2.inline = false
  L4_2[L8_2] = L9_2
  L8_2 = {}
  L9_2 = {}
  L9_2.color = 15019070
  L10_2 = Lang
  L11_2 = "Title"
  L12_2 = {}
  L13_2 = Shared
  L13_2 = L13_2.JobsHub
  L13_2 = L13_2[A0_2]
  L13_2 = L13_2.Title
  L12_2.hub = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.title = L10_2
  L10_2 = Lang
  L11_2 = "Description"
  L12_2 = {}
  L12_2.onduty = L5_2
  L12_2.offduty = L6_2
  L13_2 = L5_2 + L6_2
  L12_2.total = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.description = L10_2
  L9_2.fields = L4_2
  L10_2 = {}
  L11_2 = os
  L11_2 = L11_2.date
  L12_2 = "%c"
  L11_2 = L11_2(L12_2)
  L10_2.text = L11_2
  L10_2.icon_url = "https://assets.dev.l2s.dev/l2s/images/l2s-white.png"
  L9_2.footer = L10_2
  L8_2[1] = L9_2
  L1_2 = L8_2
  L8_2 = PerformHttpRequest
  L9_2 = L2_2
  function L10_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
  end
  L11_2 = L3_2
  L12_2 = json
  L12_2 = L12_2.encode
  L13_2 = {}
  L13_2.username = "L2S DISPATCH"
  L13_2.avatar_url = "https://assets.dev.l2s.dev/l2s/images/l2s-white.png"
  L13_2.embeds = L1_2
  L12_2 = L12_2(L13_2)
  L13_2 = {}
  L13_2["Content-Type"] = "application/json"
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
end
L7_1 = CreateThread
function L8_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 2500
  L0_2(L1_2)
  L0_2 = SendDutyStatus
  L0_2()
end
L7_1(L8_1)
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = Shared
  L1_2 = L1_2.JobsHub
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = Logs
    L6_2 = L6_2[L4_2]
    if L6_2 then
      L6_2 = Logs
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.Status
      L6_2 = L6_2.Active
      if true == L6_2 then
        L6_2 = Logs
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.Status
        L6_2 = L6_2.Webhok
        if "" ~= L6_2 then
          L6_2 = L6_1
          L7_2 = L4_2
          L6_2(L7_2)
        end
      end
    end
  end
  L0_2 = Wait
  L1_2 = Status_TimeOut
  L0_2(L1_2)
  L0_2 = SendDutyStatus
  L0_2()
end
SendDutyStatus = L7_1
function L7_1(A0_2)
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
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2[A0_2]
    if L7_2 then
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
getHubName = L8_1
L8_1 = CreateThread
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Shared
  L2_2 = L2_2.JobsHub
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L1_1
    L8_2 = {}
    L7_2[L5_2] = L8_2
    L7_2 = GlobalState
    L8_2 = {}
    L7_2[L5_2] = L8_2
    L7_2 = pairs
    L8_2 = L6_2.Jobs
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L0_2[L11_2]
      if L13_2 then
        L13_2 = print
        L14_2 = "^8 [Debug] There is job "
        L15_2 = L11_2
        L16_2 = " in two or more hubs please re-check sh_hub^0"
        L14_2 = L14_2 .. L15_2 .. L16_2
        L13_2(L14_2)
      else
        L0_2[L11_2] = true
      end
    end
  end
  L1_2 = Shared
  L1_2 = L1_2.Settings
  L1_2 = L1_2.Test
  if L1_2 then
    L1_2 = {}
    L2_2 = "Faisal Ali"
    L3_2 = "Mazen Khaled"
    L4_2 = "Essa Emad"
    L5_2 = "Ziyad Assiri"
    L6_2 = "Ali Alharbi"
    L7_2 = "Ahmed Salim"
    L8_2 = "Mohammed Zayed"
    L9_2 = "Omar Tarek"
    L10_2 = "Saeed Ibrahim"
    L11_2 = "Hassan Jassim"
    L12_2 = "Khaled Alshamsi"
    L13_2 = "Salim Sultan"
    L14_2 = "Nasser Alhammadi"
    L15_2 = "Hamad Aljabri"
    L16_2 = "Abdullah Rashid"
    L17_2 = "Yousef Fahad"
    L18_2 = "Rashid Almansoori"
    L19_2 = "Hamad Khalifa"
    L20_2 = "Ibrahim Basheer"
    L21_2 = "Zayed Ahmed"
    L22_2 = "Mubarak Salem"
    L23_2 = "Mohammed Ali"
    L24_2 = "Fahad Qht"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L1_2[5] = L6_2
    L1_2[6] = L7_2
    L1_2[7] = L8_2
    L1_2[8] = L9_2
    L1_2[9] = L10_2
    L1_2[10] = L11_2
    L1_2[11] = L12_2
    L1_2[12] = L13_2
    L1_2[13] = L14_2
    L1_2[14] = L15_2
    L1_2[15] = L16_2
    L1_2[16] = L17_2
    L1_2[17] = L18_2
    L1_2[18] = L19_2
    L1_2[19] = L20_2
    L1_2[20] = L21_2
    L1_2[21] = L22_2
    L1_2[22] = L23_2
    L1_2[23] = L24_2
    L2_2 = {}
    L3_2 = "Police Chief"
    L4_2 = "Commander"
    L5_2 = "Lieutenant General"
    L6_2 = "Sergeant"
    L7_2 = "Deputy Sergeant"
    L8_2 = "Officer"
    L9_2 = "Cadet"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L2_2[5] = L7_2
    L2_2[6] = L8_2
    L2_2[7] = L9_2
    L3_2 = Shared
    L3_2 = L3_2.Settings
    L3_2 = L3_2.Lang
    if "AR" == L3_2 then
      L3_2 = {}
      L4_2 = "\216\177\216\166\217\138\216\179 \216\167\217\132\216\180\216\177\216\183\216\169"
      L5_2 = "\217\130\216\167\216\166\216\175 \216\167\216\185\217\132\217\137"
      L6_2 = "\217\129\216\177\217\138\217\130"
      L7_2 = "\216\177\217\130\217\138\216\168"
      L8_2 = "\217\136\217\131\217\138\217\132 \216\177\217\130\216\168\216\167\216\161"
      L9_2 = "\216\172\217\134\216\175\217\138 \216\167\217\136\217\132"
      L10_2 = "\217\133\216\179\216\170\216\172\216\175"
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L3_2[5] = L8_2
      L3_2[6] = L9_2
      L3_2[7] = L10_2
      L2_2 = L3_2
      L3_2 = {}
      L4_2 = "\217\129\217\138\216\181\217\132 \216\185\217\132\217\138"
      L5_2 = "\217\133\216\167\216\178\217\134 \216\174\216\167\217\132\216\175"
      L6_2 = "\216\185\217\138\216\179\217\137 \216\185\217\133\216\167\216\175"
      L7_2 = "\216\178\217\138\216\167\216\175 \216\185\216\179\217\138\216\177\217\138"
      L8_2 = "\216\168\216\175\216\177 \216\167\217\132\216\173\216\177\216\168\217\138"
      L9_2 = "\216\163\216\173\217\133\216\175 \216\179\216\167\217\132\217\133"
      L10_2 = "\217\133\216\173\217\133\216\175 \216\178\216\167\217\138\216\175"
      L11_2 = "\216\185\217\133\216\177 \216\183\216\167\216\177\217\130"
      L12_2 = "\216\179\216\185\217\138\216\175 \216\165\216\168\216\177\216\167\217\135\217\138\217\133"
      L13_2 = "\216\173\216\179\217\134 \216\172\216\167\216\179\217\133"
      L14_2 = "\216\174\216\167\217\132\216\175 \216\167\217\132\216\180\217\133\216\179\217\138"
      L15_2 = "\216\179\216\167\217\132\217\133 \216\179\217\132\216\183\216\167\217\134"
      L16_2 = "\217\134\216\167\216\181\216\177 \216\167\217\132\216\173\217\133\216\167\216\175\217\138"
      L17_2 = "\216\185\216\168\216\167\217\138"
      L18_2 = "\216\170\216\177\217\131\217\138 \216\167\217\132\216\177\217\133\217\138\216\173"
      L19_2 = "\216\185\217\133\216\167\216\177 \216\167\217\132\216\173\217\136\216\180\216\167\217\134\217\138"
      L20_2 = "\216\177\216\180\217\138\216\175 \216\167\217\132\217\133\217\134\216\181\217\136\216\177\217\138"
      L21_2 = "\216\173\217\133\216\175 \216\174\217\132\217\138\217\129\216\169"
      L22_2 = "\216\165\216\168\216\177\216\167\217\135\217\138\217\133 \216\168\216\180\217\138\216\177"
      L23_2 = "\216\178\216\167\217\138\216\175 \216\163\216\173\217\133\216\175"
      L24_2 = "\217\133\216\168\216\167\216\177\217\131 \216\179\216\167\217\132\217\133"
      L25_2 = "\217\133\216\173\217\133\216\175 \216\185\217\132\217\138"
      L26_2 = "\217\129\217\135\216\175 \216\167\217\132\217\130\216\173\216\183\216\167\217\134\217\138"
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L3_2[5] = L8_2
      L3_2[6] = L9_2
      L3_2[7] = L10_2
      L3_2[8] = L11_2
      L3_2[9] = L12_2
      L3_2[10] = L13_2
      L3_2[11] = L14_2
      L3_2[12] = L15_2
      L3_2[13] = L16_2
      L3_2[14] = L17_2
      L3_2[15] = L18_2
      L3_2[16] = L19_2
      L3_2[17] = L20_2
      L3_2[18] = L21_2
      L3_2[19] = L22_2
      L3_2[20] = L23_2
      L3_2[21] = L24_2
      L3_2[22] = L25_2
      L3_2[23] = L26_2
      L1_2 = L3_2
    end
    L3_2 = L1_1.POLICE
    L4_2 = 11001
    L5_2 = {}
    L5_2.source = 11001
    L6_2 = L1_2[1]
    L5_2.name = L6_2
    L5_2.callsign = "101"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[1]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = true
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11002
    L5_2 = {}
    L5_2.source = 11002
    L6_2 = L1_2[2]
    L5_2.name = L6_2
    L5_2.callsign = "102"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[2]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11003
    L5_2 = {}
    L5_2.source = 11003
    L6_2 = L1_2[3]
    L5_2.name = L6_2
    L5_2.callsign = "103"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[3]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = true
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11004
    L5_2 = {}
    L5_2.source = 11004
    L6_2 = L1_2[4]
    L5_2.name = L6_2
    L5_2.callsign = "104"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[3]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11005
    L5_2 = {}
    L5_2.source = 11005
    L6_2 = L1_2[5]
    L5_2.name = L6_2
    L5_2.callsign = "105"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[4]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11006
    L5_2 = {}
    L5_2.source = 11006
    L6_2 = L1_2[6]
    L5_2.name = L6_2
    L5_2.callsign = "106"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[4]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = true
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11007
    L5_2 = {}
    L5_2.source = 11007
    L6_2 = L1_2[7]
    L5_2.name = L6_2
    L5_2.callsign = "107"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[5]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11008
    L5_2 = {}
    L5_2.source = 11008
    L6_2 = L1_2[8]
    L5_2.name = L6_2
    L5_2.callsign = "108"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[5]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11009
    L5_2 = {}
    L5_2.source = 11009
    L6_2 = L1_2[9]
    L5_2.name = L6_2
    L5_2.callsign = "109"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[6]
    L5_2.rank = L6_2
    L5_2.duty = false
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11010
    L5_2 = {}
    L5_2.source = 11010
    L6_2 = L1_2[10]
    L5_2.name = L6_2
    L5_2.callsign = "109"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[6]
    L5_2.rank = L6_2
    L5_2.duty = false
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11011
    L5_2 = {}
    L5_2.source = 11011
    L6_2 = L1_2[11]
    L5_2.name = L6_2
    L5_2.callsign = "109"
    L5_2.job = "police"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[7]
    L5_2.rank = L6_2
    L5_2.duty = false
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11012
    L5_2 = {}
    L5_2.source = 11012
    L6_2 = L1_2[12]
    L5_2.name = L6_2
    L5_2.callsign = "201"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[1]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = true
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11013
    L5_2 = {}
    L5_2.source = 11013
    L6_2 = L1_2[13]
    L5_2.name = L6_2
    L5_2.callsign = "210"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[2]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = true
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11014
    L5_2 = {}
    L5_2.source = 11014
    L6_2 = L1_2[14]
    L5_2.name = L6_2
    L5_2.callsign = "203"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[3]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11015
    L5_2 = {}
    L5_2.source = 11015
    L6_2 = L1_2[15]
    L5_2.name = L6_2
    L5_2.callsign = "204"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[3]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = true
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11016
    L5_2 = {}
    L5_2.source = 11016
    L6_2 = L1_2[16]
    L5_2.name = L6_2
    L5_2.callsign = "205"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[4]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11017
    L5_2 = {}
    L5_2.source = 11017
    L6_2 = L1_2[17]
    L5_2.name = L6_2
    L5_2.callsign = "206"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[4]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11018
    L5_2 = {}
    L5_2.source = 11018
    L6_2 = L1_2[18]
    L5_2.name = L6_2
    L5_2.callsign = "207"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[5]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11019
    L5_2 = {}
    L5_2.source = 11019
    L6_2 = L1_2[19]
    L5_2.name = L6_2
    L5_2.callsign = "208"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[5]
    L5_2.rank = L6_2
    L5_2.duty = true
    L5_2.busy = true
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11020
    L5_2 = {}
    L5_2.source = 11020
    L6_2 = L1_2[20]
    L5_2.name = L6_2
    L5_2.callsign = "209"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[6]
    L5_2.rank = L6_2
    L5_2.duty = false
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11021
    L5_2 = {}
    L5_2.source = 11021
    L6_2 = L1_2[21]
    L5_2.name = L6_2
    L5_2.callsign = "209"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[7]
    L5_2.rank = L6_2
    L5_2.duty = false
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
    L3_2 = L1_1.POLICE
    L4_2 = 11022
    L5_2 = {}
    L5_2.source = 11022
    L6_2 = L1_2[22]
    L5_2.name = L6_2
    L5_2.callsign = "209"
    L5_2.job = "sheriff"
    L6_2 = vec2
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = -2000
    L9_2 = 2222
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = -2000
    L10_2 = 2000
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2.coords = L6_2
    L6_2 = L2_2[7]
    L5_2.rank = L6_2
    L5_2.duty = false
    L5_2.busy = false
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 3
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.radio = L6_2
    L5_2.dispatch = false
    L5_2.test = true
    L3_2[L4_2] = L5_2
  end
  L1_2 = API_Keys
  L1_2 = L1_2.Token
  if "YOUR_TOKEN" == L1_2 then
    L2_2 = print
    L3_2 = "^8 [Debug] Set Your Token Or Webhook in sh_settings to save records^0"
    L2_2(L3_2)
  end
  L2_2 = Wait
  L3_2 = 1000
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = Shared
  L3_2 = L3_2.JobsHub
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Logs
    L8_2 = L8_2[L6_2]
    if not L8_2 then
      L8_2 = print
      L9_2 = "^8 [Debug] "
      L10_2 = L6_2
      L11_2 = " Logs Not add yet in sh_api^0"
      L9_2 = L9_2 .. L10_2 .. L11_2
      L8_2(L9_2)
    end
  end
end
L8_1(L9_1)
L8_1 = {}
Officer = L8_1
L8_1 = Officer
L9_1 = Officer
L8_1.__index = L9_1
L8_1 = Officer
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = setmetatable
  L4_2 = {}
  L5_2 = Officer
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L0_1.Functions
  L4_2 = L4_2.GetPlayer
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetPlayerPed
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityCoords
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L3_2.source = A1_2
  L7_2 = L4_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.firstname
  L8_2 = " "
  L9_2 = L4_2.PlayerData
  L9_2 = L9_2.charinfo
  L9_2 = L9_2.lastname
  L7_2 = L7_2 .. L8_2 .. L9_2
  L3_2.name = L7_2
  L7_2 = L4_2.PlayerData
  L7_2 = L7_2.metadata
  L7_2 = L7_2.l2s_dispatch
  L7_2 = L7_2.callsign
  if not L7_2 then
    L7_2 = "###"
  end
  L3_2.callsign = L7_2
  L7_2 = GetDuty
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L3_2.duty = L7_2
  L7_2 = vec2
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = L6_2.x
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = L6_2.y
  L9_2, L10_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L3_2.coords = L7_2
  L7_2 = L4_2.PlayerData
  L7_2 = L7_2.job
  L7_2 = L7_2.name
  L3_2.job = L7_2
  L7_2 = L4_2.PlayerData
  L7_2 = L7_2.job
  L7_2 = L7_2.grade
  L7_2 = L7_2.name
  L3_2.rank = L7_2
  L7_2 = L4_2.PlayerData
  L7_2 = L7_2.metadata
  L7_2 = L7_2.l2s_dispatch
  L7_2 = L7_2.busy
  if not L7_2 then
    L7_2 = false
  end
  L3_2.busy = L7_2
  L7_2 = L4_2.PlayerData
  L7_2 = L7_2.metadata
  L7_2 = L7_2.l2s_dispatch
  L7_2 = L7_2.dispatch
  if not L7_2 then
    L7_2 = false
  end
  L3_2.dispatch = L7_2
  L7_2 = Shared
  L7_2 = L7_2.Settings
  L7_2 = L7_2.OffDutyActions
  if not L7_2 then
    L7_2 = L3_2.duty
    if not L7_2 then
      L3_2.radio = 0
  end
  else
    L7_2 = GetRadioChannel
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L3_2.radio = L7_2
  end
  return L3_2
end
L8_1.new = L9_1
L8_1 = Officer
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2.duty = A1_2
  if not A2_2 then
    if A1_2 then
      L3_2 = Notify
      L4_2 = A0_2.source
      L5_2 = Lang
      L6_2 = "OnDuty"
      L5_2 = L5_2(L6_2)
      L6_2 = "success"
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = Notify
      L4_2 = A0_2.source
      L5_2 = Lang
      L6_2 = "OffDuty"
      L5_2 = L5_2(L6_2)
      L6_2 = "error"
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = ToggleDuty
    L4_2 = A0_2.source
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L8_1.SetDuty = L9_1
L8_1 = Officer
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1.Functions
  L2_2 = L2_2.GetPlayer
  L3_2 = A0_2.source
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PlayerData
  L3_2 = L3_2.metadata
  L3_2 = L3_2.l2s_dispatch
  L3_2.callsign = A1_2
  L4_2 = L2_2.Functions
  L4_2 = L4_2.SetMetaData
  L5_2 = "l2s_dispatch"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2.callsign = A1_2
  L4_2 = Notify
  L5_2 = A0_2.source
  L6_2 = Lang
  L7_2 = "CallSign_Set"
  L8_2 = {}
  L8_2.callsign = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
end
L8_1.SetCallSign = L9_1
L8_1 = Officer
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1.Functions
  L2_2 = L2_2.GetPlayer
  L3_2 = A0_2.source
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PlayerData
  L3_2 = L3_2.metadata
  L3_2 = L3_2.l2s_dispatch
  L3_2.dispatch = A1_2
  L4_2 = L2_2.Functions
  L4_2 = L4_2.SetMetaData
  L5_2 = "l2s_dispatch"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2.dispatch = A1_2
  if A1_2 then
    L4_2 = Notify
    L5_2 = A0_2.source
    L6_2 = Lang
    L7_2 = "OnDispatch"
    L6_2 = L6_2(L7_2)
    L7_2 = "success"
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = Notify
    L5_2 = A0_2.source
    L6_2 = Lang
    L7_2 = "OffDispatch"
    L6_2 = L6_2(L7_2)
    L7_2 = "info"
    L4_2(L5_2, L6_2, L7_2)
  end
end
L8_1.SetDispatch = L9_1
L8_1 = Officer
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1.Functions
  L2_2 = L2_2.GetPlayer
  L3_2 = A0_2.source
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PlayerData
  L3_2 = L3_2.metadata
  L3_2 = L3_2.l2s_dispatch
  L3_2.busy = A1_2
  L4_2 = L2_2.Functions
  L4_2 = L4_2.SetMetaData
  L5_2 = "l2s_dispatch"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2.busy = A1_2
  if A1_2 then
    L4_2 = Notify
    L5_2 = A0_2.source
    L6_2 = Lang
    L7_2 = "OnBusy"
    L6_2 = L6_2(L7_2)
    L7_2 = "success"
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = Notify
    L5_2 = A0_2.source
    L6_2 = Lang
    L7_2 = "OffBusy"
    L6_2 = L6_2(L7_2)
    L7_2 = "info"
    L4_2(L5_2, L6_2, L7_2)
  end
end
L8_1.SetBusy = L9_1
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:AddPlayer"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:AddPlayer"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    L2_2 = Officer
    L3_2 = L2_2
    L2_2 = L2_2.new
    L4_2 = L1_2
    L5_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    L3_2[L1_2] = L2_2
    L3_2 = Shared
    L3_2 = L3_2.Settings
    L3_2 = L3_2.Debug
    if L3_2 then
      L3_2 = print
      L4_2 = "^8 [Debug]  ^3"
      L5_2 = L2_2.name
      L6_2 = " Add to "
      L7_2 = A0_2
      L8_2 = " Hub ^0"
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
      L3_2(L4_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:RemovePlayer"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:RemovePlayer"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = getHubName
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_1
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2[L0_2]
    if L2_2 then
      L2_2 = Shared
      L2_2 = L2_2.Settings
      L2_2 = L2_2.Debug
      if L2_2 then
        L2_2 = print
        L3_2 = "^8 [Debug] ^3 "
        L4_2 = L1_1
        L4_2 = L4_2[L1_2]
        L4_2 = L4_2[L0_2]
        L4_2 = L4_2.name
        L5_2 = " Removed from "
        L6_2 = L1_2
        L7_2 = " Hub ^0"
        L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
        L2_2(L3_2)
      end
      L2_2 = L1_1
      L2_2 = L2_2[L1_2]
      L2_2[L0_2] = nil
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SetDuty"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SetDuty"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L1_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2[L1_2]
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2[L1_2]
      L5_2 = L3_2
      L4_2 = L3_2.SetDuty
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SetDutyStatus"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SetDutyStatus"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L1_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2[L1_2]
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2[L1_2]
      L5_2 = L3_2
      L4_2 = L3_2.SetDuty
      L6_2 = A0_2
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SetCallsign"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SetCallsign"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L1_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2[L1_2]
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2[L1_2]
      L5_2 = L3_2
      L4_2 = L3_2.SetCallSign
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SetDispatch"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SetDispatch"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L1_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2[L1_2]
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2[L1_2]
      L5_2 = L3_2
      L4_2 = L3_2.SetDispatch
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SetBusy"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SetBusy"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L1_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2[L1_2]
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2[L1_2]
      L5_2 = L3_2
      L4_2 = L3_2.SetBusy
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "l2s-dispatch:server:CheckBodyCam"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = false
  L3_2 = false
  L4_2 = L2_1
  L4_2 = L4_2[A1_2]
  if nil == L4_2 and A1_2 then
    L4_2 = hasBodyCam
    L5_2 = tonumber
    L6_2 = A1_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      L2_2 = true
      L6_2 = source
      L5_2 = L2_1
      L5_2[L6_2] = A1_2
      L5_2 = GetPlayerPed
      L6_2 = A1_2
      L5_2 = L5_2(L6_2)
      L6_2 = GetEntityCoords
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L3_2 = L6_2
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:StopWatching"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:StopWatching"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = L2_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = TriggerClientEvent
    L2_2 = "l2s-dispatch:client:CheckingItem"
    L3_2 = L2_1
    L3_2 = L3_2[L0_2]
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = L2_1
    L1_2[L0_2] = nil
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:ToggleWatch"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:ToggleWatch"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = TriggerClientEvent
  L3_2 = "l2s-dispatch:client:CheckingItem"
  L4_2 = A0_2
  L5_2 = true
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:StopBodyCam"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:StopBodyCam"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "l2s-dispatch:client:StopBodyCam"
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "l2s-dispatch:server:FlaggedVehicle"
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = A0_2
  L5_2 = getHubName
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L1_1
  L6_2 = L6_2[L5_2]
  L6_2 = L6_2[L4_2]
  if L6_2 then
    L6_2 = L1_1
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.name
    if L6_2 then
      goto lbl_17
    end
  end
  L6_2 = "Unknown Officer"
  ::lbl_17::
  L7_2 = isVehicleOwned
  L8_2 = A1_2
  L7_2, L8_2 = L7_2(L8_2)
  if not L7_2 then
    L9_2 = false
    L10_2 = Lang
    L11_2 = "NotOwned"
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2(L11_2)
    return L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  end
  L9_2 = GetVehicleLable
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = promise
  L10_2 = L10_2.new
  L10_2 = L10_2()
  L11_2 = MySQL
  L11_2 = L11_2.Async
  L11_2 = L11_2.fetchScalar
  L12_2 = "SELECT COUNT(1) FROM l2s_dispatch_bolo WHERE plate = @plate"
  L13_2 = {}
  L13_2["@plate"] = A1_2
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L10_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3 > 0
    L1_3(L2_3, L3_3)
  end
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = Citizen
  L11_2 = L11_2.Await
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  if L11_2 then
    L12_2 = false
    L13_2 = Lang
    L14_2 = "AlreadyFlagged"
    L15_2 = {}
    L15_2.plate = A1_2
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2, L15_2)
    return L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  end
  L12_2 = promise
  L12_2 = L12_2.new
  L12_2 = L12_2()
  L13_2 = MySQL
  L13_2 = L13_2.Async
  L13_2 = L13_2.execute
  L14_2 = "INSERT INTO l2s_dispatch_bolo (plate, officer, reason, vehicle, priority) VALUES (@plate, @officer, @reason, @vehicle, @priority)"
  L15_2 = {}
  L15_2["@plate"] = A1_2
  L15_2["@officer"] = L6_2
  L15_2["@reason"] = A2_2
  L15_2["@vehicle"] = L9_2
  L15_2["@priority"] = A3_2
  function L16_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L12_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3 > 0
    L1_3(L2_3, L3_3)
  end
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = Citizen
  L13_2 = L13_2.Await
  L14_2 = L12_2
  L13_2 = L13_2(L14_2)
  if L13_2 then
    L14_2 = Notify
    L15_2 = L4_2
    L16_2 = "Vehicle :["
    L17_2 = A1_2
    L18_2 = "] has been flagged for: "
    L19_2 = A2_2
    L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
    L17_2 = "success"
    L14_2(L15_2, L16_2, L17_2)
    L14_2 = Logs
    L14_2 = L14_2[L5_2]
    if L14_2 then
      L14_2 = Logs
      L14_2 = L14_2[L5_2]
      L14_2 = L14_2.BOLO
      if L14_2 then
        L14_2 = Logs
        L14_2 = L14_2[L5_2]
        L14_2 = L14_2.BOLO
        if "" ~= L14_2 then
          L14_2 = {}
          L15_2 = {}
          L15_2.name = "Officer:"
          L16_2 = "```"
          L17_2 = L6_2
          L18_2 = "```"
          L16_2 = L16_2 .. L17_2 .. L18_2
          L15_2.value = L16_2
          L15_2.inline = true
          L16_2 = {}
          L16_2.name = "Vehicle:"
          L17_2 = "```"
          L18_2 = L9_2
          L19_2 = "```"
          L17_2 = L17_2 .. L18_2 .. L19_2
          L16_2.value = L17_2
          L16_2.inline = true
          L17_2 = {}
          L17_2.name = "Priority:"
          L18_2 = "```"
          L19_2 = A3_2
          L20_2 = "```"
          L18_2 = L18_2 .. L19_2 .. L20_2
          L17_2.value = L18_2
          L17_2.inline = true
          L18_2 = {}
          L18_2.name = "Plate:"
          L19_2 = "```"
          L20_2 = A1_2
          L21_2 = "```"
          L19_2 = L19_2 .. L20_2 .. L21_2
          L18_2.value = L19_2
          L18_2.inline = true
          L19_2 = {}
          L19_2.name = "Reason:"
          L20_2 = "```"
          L21_2 = A2_2
          L22_2 = "```"
          L20_2 = L20_2 .. L21_2 .. L22_2
          L19_2.value = L20_2
          L19_2.inline = false
          L14_2[1] = L15_2
          L14_2[2] = L16_2
          L14_2[3] = L17_2
          L14_2[4] = L18_2
          L14_2[5] = L19_2
          L15_2 = L5_1
          L16_2 = "BOLO"
          L17_2 = L5_2
          L18_2 = "Flagged New Vehicle"
          L19_2 = L14_2
          L15_2(L16_2, L17_2, L18_2, L19_2)
        end
      end
    end
    L14_2 = true
    L15_2 = "done"
    return L14_2, L15_2
  else
    L14_2 = false
    L15_2 = Lang
    L16_2 = "Fail_Flag"
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2(L16_2)
    return L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:UnFlaggedVehicle"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:UnFlaggedVehicle"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.name
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "DELETE FROM l2s_dispatch_bolo WHERE plate = @plate"
  L6_2 = {}
  L6_2["@plate"] = A0_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 > 0 then
      L1_3 = Notify
      L2_3 = L1_2
      L3_3 = Lang
      L4_3 = "UnFlagged"
      L5_3 = {}
      L6_3 = A0_2
      L5_3.plate = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = "success"
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = Logs
      L2_3 = L2_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.BOLO
      if L1_3 then
        L1_3 = Logs
        L2_3 = L2_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.BOLO
        if "" ~= L1_3 then
          L1_3 = {}
          L2_3 = {}
          L2_3.name = "Officer:"
          L3_3 = "```"
          L4_3 = L3_2
          L5_3 = "```"
          L3_3 = L3_3 .. L4_3 .. L5_3
          L2_3.value = L3_3
          L2_3.inline = true
          L3_3 = {}
          L3_3.name = "Plate:"
          L4_3 = "```"
          L5_3 = A0_2
          L6_3 = "```"
          L4_3 = L4_3 .. L5_3 .. L6_3
          L3_3.value = L4_3
          L3_3.inline = true
          L1_3[1] = L2_3
          L1_3[2] = L3_3
          L2_3 = L5_1
          L3_3 = "BOLO"
          L4_3 = L2_2
          L5_3 = "Unflagged Vehicle"
          L6_3 = L1_3
          L2_3(L3_3, L4_3, L5_3, L6_3)
        end
      end
    else
      L1_3 = Notify
      L2_3 = L1_2
      L3_3 = Lang
      L4_3 = "Veh_Not_Found"
      L5_3 = {}
      L6_3 = A0_2
      L5_3.plate = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = "error"
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "l2s-dispatch:server:SearchAll"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A2_2 then
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = 1
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = 1
  ::lbl_11::
  L4_2 = 16
  L5_2 = L3_2 - 1
  L5_2 = L5_2 * L4_2
  L6_2 = [[
        SELECT * 
        FROM l2s_dispatch_bolo
        WHERE plate LIKE @searchValue
        OR reason LIKE @searchValue
        OR vehicle LIKE @searchValue
        OR date LIKE @searchValue
        OR officer LIKE @searchValue
        LIMIT @limit OFFSET @offset
    ]]
  L7_2 = MySQL
  L7_2 = L7_2.Sync
  L7_2 = L7_2.fetchAll
  L8_2 = L6_2
  L9_2 = {}
  L10_2 = "%"
  L11_2 = A1_2
  L12_2 = "%"
  L10_2 = L10_2 .. L11_2 .. L12_2
  L9_2["@searchValue"] = L10_2
  L9_2["@limit"] = L4_2
  L9_2["@offset"] = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = [[
        SELECT COUNT(*) as totalCount 
        FROM l2s_dispatch_bolo
        WHERE plate LIKE @searchValue
        OR reason LIKE @searchValue
        OR vehicle LIKE @searchValue
        OR date LIKE @searchValue
        OR officer LIKE @searchValue
    ]]
  L9_2 = MySQL
  L9_2 = L9_2.Sync
  L9_2 = L9_2.fetchScalar
  L10_2 = L8_2
  L11_2 = {}
  L12_2 = "%"
  L13_2 = A1_2
  L14_2 = "%"
  L12_2 = L12_2 .. L13_2 .. L14_2
  L11_2["@searchValue"] = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = #L7_2
  if L10_2 > 0 then
    L10_2 = true
    L11_2 = {}
    L11_2.vehicles = L7_2
    L11_2.count = L9_2
    return L10_2, L11_2
  else
    L10_2 = false
    L11_2 = Lang
    L12_2 = "No_Results"
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
    return L10_2, L11_2, L12_2, L13_2, L14_2
  end
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "l2s-dispatch:server:GetFlaggedVehicles"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = math
    L2_2 = L2_2.max
    L3_2 = 1
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = 1
  ::lbl_11::
  L3_2 = 16
  L4_2 = L2_2 - 1
  L4_2 = L4_2 * L3_2
  L5_2 = promise
  L5_2 = L5_2.new
  L5_2 = L5_2()
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.fetchAll
  L7_2 = "SELECT * FROM l2s_dispatch_bolo ORDER BY date DESC LIMIT @limit OFFSET @offset"
  L8_2 = {}
  L8_2["@limit"] = L3_2
  L8_2["@offset"] = L4_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.fetchScalar
    L2_3 = "SELECT COUNT(*) FROM l2s_dispatch_bolo"
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L5_2
      L2_4 = L1_4
      L1_4 = L1_4.resolve
      L3_4 = {}
      L4_4 = A0_3
      if not L4_4 then
        L4_4 = {}
      end
      L3_4.results = L4_4
      L4_4 = A0_4 or L4_4
      if not A0_4 then
        L4_4 = 0
      end
      L3_4.totalCount = L4_4
      L1_4(L2_4, L3_4)
    end
    L1_3(L2_3, L3_3)
  end
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = Citizen
  L6_2 = L6_2.Await
  L7_2 = L5_2
  return L6_2(L7_2)
end
L8_1(L9_1, L10_1)
L8_1 = AddEventHandler
L9_1 = "playerDropped"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L1_1
    L8_2 = L8_2[L5_2]
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = tonumber
      L14_2 = L12_2.source
      L13_2 = L13_2(L14_2)
      L14_2 = tonumber
      L15_2 = source
      L14_2 = L14_2(L15_2)
      if L13_2 == L14_2 then
        L13_2 = Shared
        L13_2 = L13_2.Settings
        L13_2 = L13_2.Debug
        if L13_2 then
          L13_2 = print
          L14_2 = "^8 [Debug] ^3"
          L15_2 = L1_1
          L15_2 = L15_2[L5_2]
          L16_2 = L12_2.source
          L15_2 = L15_2[L16_2]
          L15_2 = L15_2.name
          L16_2 = " Removed from "
          L17_2 = L5_2
          L18_2 = " (Reason: "
          L19_2 = A0_2
          L20_2 = ")^0"
          L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
          L13_2(L14_2)
        end
        L13_2 = L1_1
        L13_2 = L13_2[L5_2]
        L14_2 = L12_2.source
        L13_2[L14_2] = nil
      end
    end
  end
  L2_2 = source
  L1_2 = L2_1
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = source
    L1_2 = L2_1
    L1_2[L2_2] = nil
  end
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "l2s-dispatch:server:GetHooks"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = API_Keys
  L2_2 = L2_2.ServiceUsed
  L3_2 = API_Keys
  L3_2 = L3_2.Token
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%c"
  L4_2, L5_2 = L4_2(L5_2)
  return L2_2, L3_2, L4_2, L5_2
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SendChatMSG"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SendChatMSG"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L3_2.text = A0_2
  L4_2 = L1_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.name
  L3_2.name = L4_2
  L4_2 = L1_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.callsign
  L3_2.callsign = L4_2
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%H:%M"
  L4_2 = L4_2(L5_2)
  L3_2.time = L4_2
  L3_2.source = L1_2
  L4_2 = L1_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2[L1_2]
  if L4_2 then
    L4_2 = pairs
    L5_2 = L1_1
    L5_2 = L5_2[L2_2]
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = TriggerClientEvent
      L11_2 = "l2s-dispatch:client:SendChatMSG"
      L12_2 = L9_2.source
      L13_2 = L3_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SetChannel"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SetChannel"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = SetChannel
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = getHubName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L1_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2[A0_2]
    if L3_2 then
      L4_2 = Shared
      L4_2 = L4_2.Settings
      L4_2 = L4_2.OffDutyActions
      if false == L4_2 then
        L4_2 = L3_2.duty
        if false == L4_2 then
          L3_2.radio = 0
      end
      else
        L3_2.radio = A1_2
      end
    end
  end
end
SetChannel = L8_1
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:Respond"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:Respond"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1
  L3_2 = #L3_2
  L4_2 = 300
  if L3_2 >= L4_2 then
    L3_2 = {}
    L3_1 = L3_2
  end
  L3_2 = L3_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L3_1
    L4_2 = L3_1
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2 + 1
    L3_2[A0_2] = L4_2
  else
    L3_2 = L3_1
    L3_2[A0_2] = 1
  end
  if L2_2 then
    L3_2 = L1_1
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = pairs
      L4_2 = L1_1
      L4_2 = L4_2[L2_2]
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2.duty
        if L9_2 then
          L9_2 = TriggerClientEvent
          L10_2 = "l2s-dispatch:client:AssignUnit"
          L11_2 = L8_2.source
          L12_2 = A0_2
          L13_2 = L3_1
          L13_2 = L13_2[A0_2]
          L9_2(L10_2, L11_2, L12_2, L13_2)
        end
      end
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:AddNotification"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:AddNotification"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = source
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L2_2 = L2_2 * 1000
  A0_2.time = L2_2
  L2_2 = A0_2.departments
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.departments
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L1_1
      L8_2 = L8_2[L7_2]
      if L8_2 then
        L8_2 = L4_1
        L8_2 = L8_2 + 1
        L4_1 = L8_2
        L8_2 = L7_2
        L9_2 = ""
        L10_2 = L4_1
        L8_2 = L8_2 .. L9_2 .. L10_2
        A0_2.id = L8_2
        L8_2 = Shared
        L8_2 = L8_2.Settings
        L8_2 = L8_2.DispatcherMode
        if L8_2 then
          L8_2 = false
          L9_2 = pairs
          L10_2 = L1_1
          L10_2 = L10_2[L7_2]
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = L14_2.dispatch
            if L15_2 then
              L15_2 = L14_2.duty
              if L15_2 then
                L15_2 = L14_2.busy
                if false == L15_2 then
                  L8_2 = true
                  break
                end
              end
            end
          end
          if L8_2 then
            L9_2 = pairs
            L10_2 = L1_1
            L10_2 = L10_2[L7_2]
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
            for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
              L15_2 = L14_2.dispatch
              if L15_2 then
                L15_2 = L14_2.duty
                if L15_2 then
                  L15_2 = L14_2.busy
                  if false == L15_2 then
                    L15_2 = TriggerClientEvent
                    L16_2 = "l2s-dispatch:client:AddNotification"
                    L17_2 = L14_2.source
                    L18_2 = A0_2
                    L19_2 = true
                    L15_2(L16_2, L17_2, L18_2, L19_2)
                  end
                end
              end
            end
          else
            L9_2 = pairs
            L10_2 = L1_1
            L10_2 = L10_2[L7_2]
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
            for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
              L15_2 = L14_2.duty
              if L15_2 then
                L15_2 = TriggerClientEvent
                L16_2 = "l2s-dispatch:client:AddNotification"
                L17_2 = L14_2.source
                L18_2 = A0_2
                L19_2 = false
                L15_2(L16_2, L17_2, L18_2, L19_2)
              end
            end
          end
        else
          L8_2 = pairs
          L9_2 = L1_1
          L9_2 = L9_2[L7_2]
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
          for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
            L14_2 = L13_2.duty
            if L14_2 then
              L14_2 = TriggerClientEvent
              L15_2 = "l2s-dispatch:client:AddNotification"
              L16_2 = L13_2.source
              L17_2 = A0_2
              L18_2 = false
              L14_2(L15_2, L16_2, L17_2, L18_2)
            end
          end
        end
      end
    end
  else
    L2_2 = Shared
    L2_2 = L2_2.Settings
    L2_2 = L2_2.Debug
    if L2_2 then
      L2_2 = print
      L3_2 = "Failed to load departments: "
      L4_2 = tostring
      L5_2 = A0_2.departments
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SetAlertOfficers"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SetAlertOfficers"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = source
  L3_2 = A0_2.assigned
  if not L3_2 then
    L3_2 = 0
  end
  L5_2 = A0_2.id
  L4_2 = L3_1
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L5_2 = A0_2.id
    L4_2 = L3_1
    L3_2 = L4_2[L5_2]
  end
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L2_2 ~= L9_2 then
      L10_2 = TriggerClientEvent
      L11_2 = "l2s-dispatch:client:AddNotification"
      L12_2 = L9_2
      L13_2 = A0_2
      L14_2 = false
      L10_2(L11_2, L12_2, L13_2, L14_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:SendReply"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:SendReply"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ServerChat
  L2_2 = A0_2.id
  L3_2 = A0_2.msg
  L4_2 = "Info"
  L1_2(L2_2, L3_2, L4_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterServerEvent
L9_1 = "l2s-dispatch:server:ShareInfo"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "l2s-dispatch:server:ShareInfo"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = getHubName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.name
  L4_2 = TriggerClientEvent
  L5_2 = "l2s-dispatch:client:ShareInfo"
  L6_2 = tonumber
  L7_2 = A0_2.source
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2.type
  L8_2 = A0_2
  L9_2 = L3_2
  L10_2 = L1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 0
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = pairs
    L5_2 = L1_1
    L5_2 = L5_2[A0_2]
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.duty
      if true == L10_2 or true == A1_2 then
        L10_2 = L9_2.job
        if L10_2 == A2_2 or not A2_2 then
          L3_2 = L3_2 + 1
        end
      end
    end
  end
  return L3_2
end
GetHubTotal = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L1_1
    L8_2 = L8_2[L5_2]
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2.source
      if A0_2 == L13_2 then
        L13_2 = L12_2
        L14_2 = L5_2
        return L13_2, L14_2
      end
    end
  end
  L1_2 = false
  L2_2 = false
  return L1_2, L2_2
end
GetUnitInfo = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = false
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.dispatch
    if true == L9_2 then
      L9_2 = L8_2.busy
      if false == L9_2 then
        L1_2 = true
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2
        L11_2 = L8_2.source
        L9_2(L10_2, L11_2)
      end
    end
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
HasDispatch = L8_1
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "l2s-dispatch:server:CheckVehicle"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CheckVehicle
  L3_2 = A1_2
  return L2_2(L3_2)
end
L8_1(L9_1, L10_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.query
  L1_2 = L1_2.await
  L2_2 = "SELECT * FROM l2s_dispatch_bolo WHERE plate = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2[1]
  if L2_2 then
    L2_2 = L1_2[1]
    return L2_2
  else
    L2_2 = false
    return L2_2
  end
end
CheckVehicle = L8_1
L8_1 = CreateThread
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = Shared
  L0_2 = L0_2.Settings
  L0_2 = L0_2.OffDutyActions
  while true do
    L1_2 = Wait
    L2_2 = Shared
    L2_2 = L2_2.Settings
    L2_2 = L2_2.UpdateTimout
    L2_2 = L2_2.ServerSide
    L1_2(L2_2)
    L1_2 = next
    L2_2 = L1_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = pairs
      L2_2 = Shared
      L2_2 = L2_2.JobsHub
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = L1_1
        L7_2 = L7_2[L5_2]
        if L7_2 then
          L8_2 = next
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = {}
            L9_2 = pairs
            L10_2 = L7_2
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
            for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
              L15_2 = GetPlayerPed
              L16_2 = L14_2.source
              L15_2 = L15_2(L16_2)
              if 0 == L15_2 then
                L16_2 = L14_2.test
                if not L16_2 then
                  goto lbl_72
                end
              end
              L16_2 = L14_2.duty
              if L16_2 or L0_2 then
                L16_2 = L14_2.test
                if not L16_2 then
                  L16_2 = GetEntityCoords
                  L17_2 = L15_2
                  L16_2 = L16_2(L17_2)
                  L17_2 = vec2
                  L18_2 = math
                  L18_2 = L18_2.floor
                  L19_2 = L16_2.x
                  L18_2 = L18_2(L19_2)
                  L19_2 = math
                  L19_2 = L19_2.floor
                  L20_2 = L16_2.y
                  L19_2, L20_2 = L19_2(L20_2)
                  L17_2 = L17_2(L18_2, L19_2, L20_2)
                  L14_2.coords = L17_2
                end
              else
                L14_2.radio = 0
              end
              L16_2 = L14_2.source
              L8_2[L16_2] = L14_2
              ::lbl_72::
            end
            L9_2 = next
            L10_2 = L8_2
            L9_2 = L9_2(L10_2)
            if L9_2 then
              L9_2 = GlobalState
              L9_2[L5_2] = L8_2
            end
          end
        end
        L8_2 = Wait
        L9_2 = 100
        L8_2(L9_2)
      end
    end
  end
end
L8_1(L9_1)
L8_1 = exports
L9_1 = "GetUnitInfo"
L10_1 = GetUnitInfo
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "GetHubTotal"
L10_1 = GetHubTotal
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "CheckVehicle"
L10_1 = CheckVehicle
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "HasDispatch"
L10_1 = HasDispatch
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "SetChannel"
L10_1 = SetChannel
L8_1(L9_1, L10_1)
