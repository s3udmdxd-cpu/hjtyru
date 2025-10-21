local L0_1, L1_1, L2_1, L3_1
L0_1 = exports
L1_1 = Shared
L1_1 = L1_1.Settings
L1_1 = L1_1.FrameworkFolder
L0_1 = L0_1[L1_1]
L1_1 = L0_1
L0_1 = L0_1.GetCoreObject
L0_1 = L0_1(L1_1)
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "l2s-dispatch:server:SaveRecordedVideo"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L8_2 = A0_2
  L9_2 = L0_1.Functions
  L9_2 = L9_2.GetPlayer
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L10_2 = false
    L11_2 = "ERROR PLAYER NOT FOUNT"
    return L10_2, L11_2
  end
  L10_2 = L9_2.PlayerData
  L10_2 = L10_2.charinfo
  L10_2 = L10_2.firstname
  L11_2 = " "
  L12_2 = L9_2.PlayerData
  L12_2 = L12_2.charinfo
  L12_2 = L12_2.lastname
  L10_2 = L10_2 .. L11_2 .. L12_2
  L11_2 = getHubName
  L12_2 = L8_2
  L11_2 = L11_2(L12_2)
  L12_2 = L9_2.PlayerData
  L12_2 = L12_2.citizenid
  if not L11_2 then
    L13_2 = false
    L14_2 = "ERROR [HUB NOT FOUNT]"
    return L13_2, L14_2
  end
  L13_2 = MySQL
  L13_2 = L13_2.Sync
  L13_2 = L13_2.fetchScalar
  L14_2 = "SELECT COUNT(*) FROM l2s_dispatch_records WHERE hub = @hub AND citizenid = @citizenid"
  L15_2 = {}
  L15_2["@hub"] = L11_2
  L15_2["@citizenid"] = L12_2
  L13_2 = L13_2(L14_2, L15_2)
  if not L13_2 then
    L14_2 = false
    L15_2 = "ERROR"
    return L14_2, L15_2
  end
  L14_2 = Shared
  L14_2 = L14_2.Settings
  L14_2 = L14_2.Recordings
  L14_2 = L14_2.MaxVideos
  if L13_2 < L14_2 then
    L14_2 = pcall
    function L15_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = MySQL
      L0_3 = L0_3.Sync
      L0_3 = L0_3.execute
      L1_3 = "INSERT INTO l2s_dispatch_records (`citizenid`, `officer`, `hub`, `videolink`, `street`, `date`, `title`, `description`, `CamName`, `priority`) VALUES (@citizenid, @offName, @hub, @videolink, @street, @videodate, @title, @description, @CamName, @priority)"
      L2_3 = {}
      L3_3 = L11_2
      L2_3["@hub"] = L3_3
      L3_3 = L10_2
      L2_3["@offName"] = L3_3
      L3_3 = A1_2
      L2_3["@videolink"] = L3_3
      L3_3 = A2_2
      L2_3["@street"] = L3_3
      L3_3 = L12_2
      L2_3["@citizenid"] = L3_3
      L3_3 = A4_2
      if not L3_3 then
        L3_3 = "Video Recording"
      end
      L2_3["@title"] = L3_3
      L3_3 = A5_2
      if not L3_3 then
        L3_3 = "This video recording has no description."
      end
      L2_3["@description"] = L3_3
      L3_3 = A3_2
      L2_3["@CamName"] = L3_3
      L3_3 = A7_2
      L2_3["@videodate"] = L3_3
      L3_3 = A6_2
      L2_3["@priority"] = L3_3
      return L0_3(L1_3, L2_3)
    end
    L14_2, L15_2 = L14_2(L15_2)
    if not L14_2 or 0 == L15_2 then
      L16_2 = false
      L17_2 = "[ERROR NUMBER 471]"
      return L16_2, L17_2
    end
    L16_2 = Logs
    L16_2 = L16_2[L11_2]
    if L16_2 then
      L16_2 = Logs
      L16_2 = L16_2[L11_2]
      L16_2 = L16_2.Records
      if L16_2 then
        L16_2 = Logs
        L16_2 = L16_2[L11_2]
        L16_2 = L16_2.Records
        if "" ~= L16_2 then
          L16_2 = {}
          L17_2 = {}
          L17_2.name = "Officer:"
          L18_2 = "```"
          L19_2 = L12_2
          L20_2 = " - "
          L21_2 = L10_2
          L22_2 = "```"
          L18_2 = L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2
          L17_2.value = L18_2
          L17_2.inline = true
          L18_2 = {}
          L18_2.name = "Cam Name:"
          L19_2 = "```"
          L20_2 = A3_2
          L21_2 = "```"
          L19_2 = L19_2 .. L20_2 .. L21_2
          L18_2.value = L19_2
          L18_2.inline = true
          L19_2 = {}
          L19_2.name = "Location:"
          L20_2 = "```"
          L21_2 = A2_2
          L22_2 = "```"
          L20_2 = L20_2 .. L21_2 .. L22_2
          L19_2.value = L20_2
          L19_2.inline = false
          L20_2 = {}
          L20_2.name = "Video Link:"
          L21_2 = "```"
          L22_2 = A1_2
          L23_2 = "```"
          L21_2 = L21_2 .. L22_2 .. L23_2
          L20_2.value = L21_2
          L20_2.inline = false
          L21_2 = {}
          L21_2.name = "Title:"
          L22_2 = "```"
          L23_2 = A5_2
          L24_2 = "```"
          L22_2 = L22_2 .. L23_2 .. L24_2
          L21_2.value = L22_2
          L21_2.inline = false
          L16_2[1] = L17_2
          L16_2[2] = L18_2
          L16_2[3] = L19_2
          L16_2[4] = L20_2
          L16_2[5] = L21_2
          L17_2 = DiscordLog
          L18_2 = "Records"
          L19_2 = L11_2
          L20_2 = "Saved Bodycam Record"
          L21_2 = L16_2
          L17_2(L18_2, L19_2, L20_2, L21_2)
        end
      end
    end
    L16_2 = true
    return L16_2
  else
    L14_2 = false
    L15_2 = Lang
    L16_2 = "Limit_Memory"
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L15_2(L16_2)
    return L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  end
end
L1_1(L2_1, L3_1)
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "l2s-dispatch:server:RemoveRecordedVideo"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A0_2
  L4_2 = L0_1.Functions
  L4_2 = L4_2.GetPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = false
  if not L4_2 then
    L7_2 = false
    L8_2 = "ERROR PLAYER NOT FOUND"
    return L7_2, L8_2
  end
  L7_2 = L4_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.firstname
  L8_2 = " "
  L9_2 = L4_2.PlayerData
  L9_2 = L9_2.charinfo
  L9_2 = L9_2.lastname
  L7_2 = L7_2 .. L8_2 .. L9_2
  L8_2 = getHubName
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = L4_2.PlayerData
  L9_2 = L9_2.citizenid
  if not L8_2 then
    L10_2 = false
    L11_2 = "ERROR [HUB NOT FOUND]"
    return L10_2, L11_2
  end
  L10_2 = MySQL
  L10_2 = L10_2.Sync
  L10_2 = L10_2.fetchScalar
  L11_2 = "SELECT * FROM l2s_dispatch_records WHERE citizenid = @citizenid AND hub = @hub AND videolink = @videoUrl LIMIT 1"
  L12_2 = {}
  L12_2["@citizenid"] = L9_2
  L12_2["@hub"] = L8_2
  L12_2["@videoUrl"] = A1_2
  L10_2 = L10_2(L11_2, L12_2)
  if not L10_2 then
    L11_2 = false
    L12_2 = "ERROR NOT FOUND"
    return L11_2, L12_2
  end
  L11_2 = pcall
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.execute
    L1_3 = "DELETE FROM l2s_dispatch_records WHERE citizenid = @citizenid AND hub = @hub AND videolink = @videoUrl"
    L2_3 = {}
    L3_3 = L9_2
    L2_3["@citizenid"] = L3_3
    L3_3 = L8_2
    L2_3["@hub"] = L3_3
    L3_3 = A1_2
    L2_3["@videoUrl"] = L3_3
    return L0_3(L1_3, L2_3)
  end
  L11_2, L12_2 = L11_2(L12_2)
  if not L11_2 or 0 == L12_2 then
    L13_2 = false
    L14_2 = "[ERROR NUMBER 471]"
    return L13_2, L14_2
  end
  L13_2 = true
  return L13_2
end
L1_1(L2_1, L3_1)
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "l2s-dispatch:server:GetRecordedVideos"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L6_2 = getHubName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L0_1.Functions
  L7_2 = L7_2.GetPlayer
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2.PlayerData
  L8_2 = L8_2.citizenid
  L9_2 = MySQL
  L9_2 = L9_2.Async
  L9_2 = L9_2.fetchAll
  L10_2 = "SELECT * FROM l2s_dispatch_records WHERE hub = @hub  ORDER BY date DESC LIMIT @limit OFFSET @offset"
  L11_2 = {}
  L11_2["@limit"] = L3_2
  L11_2["@offset"] = L4_2
  L11_2["@hub"] = L6_2
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.fetchScalar
    L2_3 = "SELECT COUNT(*) FROM l2s_dispatch_records WHERE hub = @hub"
    L3_3 = {}
    L4_3 = L6_2
    L3_3["@hub"] = L4_3
    function L4_3(A0_4)
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
    L1_3(L2_3, L3_3, L4_3)
  end
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = Citizen
  L9_2 = L9_2.Await
  L10_2 = L5_2
  return L9_2(L10_2)
end
L1_1(L2_1, L3_1)
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "l2s-dispatch:server:GetMyRecords"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L6_2 = getHubName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L0_1.Functions
  L7_2 = L7_2.GetPlayer
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2.PlayerData
  L8_2 = L8_2.citizenid
  L9_2 = MySQL
  L9_2 = L9_2.Async
  L9_2 = L9_2.fetchAll
  L10_2 = "SELECT * FROM l2s_dispatch_records WHERE citizenid = @citizenid AND hub = @hub  ORDER BY date DESC"
  L11_2 = {}
  L11_2["@citizenid"] = L8_2
  L11_2["@hub"] = L6_2
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.fetchScalar
    L2_3 = "SELECT COUNT(*) FROM l2s_dispatch_records WHERE citizenid = @citizenid AND hub = @hub"
    L3_3 = {}
    L4_3 = L8_2
    L3_3["@citizenid"] = L4_3
    L4_3 = L6_2
    L3_3["@hub"] = L4_3
    function L4_3(A0_4)
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
    L1_3(L2_3, L3_3, L4_3)
  end
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = Citizen
  L9_2 = L9_2.Await
  L10_2 = L5_2
  return L9_2(L10_2)
end
L1_1(L2_1, L3_1)
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "l2s-dispatch:server:SearchAllRecords"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
  L6_2 = getHubName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = [[
        SELECT * 
        FROM l2s_dispatch_records
        WHERE (citizenid LIKE @searchValue
        OR street LIKE @searchValue
        OR videolink LIKE @searchValue
        OR officer LIKE @searchValue
        OR CamName LIKE @searchValue
        OR title LIKE @searchValue
        OR description LIKE @searchValue
        OR date LIKE @searchValue)
        AND hub = @hub
        LIMIT @limit OFFSET @offset
    ]]
  L8_2 = MySQL
  L8_2 = L8_2.Sync
  L8_2 = L8_2.fetchAll
  L9_2 = L7_2
  L10_2 = {}
  L11_2 = "%"
  L12_2 = A1_2
  L13_2 = "%"
  L11_2 = L11_2 .. L12_2 .. L13_2
  L10_2["@searchValue"] = L11_2
  L10_2["@limit"] = L4_2
  L10_2["@offset"] = L5_2
  L10_2["@hub"] = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = [[
        SELECT COUNT(*) as totalCount 
        FROM l2s_dispatch_records
        WHERE (citizenid LIKE @searchValue
        OR street LIKE @searchValue
        OR videolink LIKE @searchValue
        OR officer LIKE @searchValue
        OR CamName LIKE @searchValue
        OR title LIKE @searchValue
        OR description LIKE @searchValue
        OR date LIKE @searchValue)
        AND hub = @hub
    ]]
  L10_2 = MySQL
  L10_2 = L10_2.Sync
  L10_2 = L10_2.fetchScalar
  L11_2 = L9_2
  L12_2 = {}
  L13_2 = "%"
  L14_2 = A1_2
  L15_2 = "%"
  L13_2 = L13_2 .. L14_2 .. L15_2
  L12_2["@searchValue"] = L13_2
  L12_2["@hub"] = L6_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = #L8_2
  if L11_2 > 0 then
    L11_2 = true
    L12_2 = {}
    L12_2.videos = L8_2
    L12_2.count = L10_2
    return L11_2, L12_2
  else
    L11_2 = false
    L12_2 = Lang
    L13_2 = "No_Results"
    L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
    return L11_2, L12_2, L13_2, L14_2, L15_2
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "l2s-dispatch:server:StartRecord"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = API_Keys
  L1_2 = L1_2.Token
  if "YOUR_TOKEN" == L1_2 or "" == L1_2 then
    L2_2 = print
    L3_2 = "^8 [Debug] Set Your Token Or Webhook in sh_settings to save records"
    L2_2(L3_2)
    return
  else
    L2_2 = TriggerClientEvent
    L3_2 = "l2s-dispatch:client:startRec"
    L4_2 = L0_2
    L5_2 = L1_2
    L6_2 = API_Keys
    L6_2 = L6_2.ServiceUsed
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = lib
L1_1 = L1_1.callback
L1_1 = L1_1.register
L2_1 = "l2s-dispatch:server:ReturnAPIs"
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = API_Keys
  return L2_2
end
L1_1(L2_1, L3_1)
