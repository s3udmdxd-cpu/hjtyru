Shared = {}
Shared.Settings = {
    -- << Framework Settings >>
    FrameworkFolder = 'qb-core',
    OnPlayerLoaded = 'QBCore:Client:OnPlayerLoaded', 
    OnPlayerUnload = 'QBCore:Client:OnPlayerUnload', 
    OnJobUpdate = 'QBCore:Client:OnJobUpdate', 
    SetDuty = 'QBCore:Client:SetDuty', 
    VoiceSystem = 'pmavoice', -- pmavoice , mumble, tokovoip, saltychat, custom || (Change Resource Name in : client/editable/cl_voice || Change Event in serve/sv_editable)
    SQLTables = { -- Code is open source in sv_editable.lua
        VehicleTable = 'player_vehicles',
        PlateColumn = 'plate',
        VehicleColumn = 'vehicle',

    },
    -- << Script Settings >>
    Lang = 'EN', -- Built-In Langs: [EN/AR]  ( [!!!] Don't forget to change language from: sh_ui.js - line 3 [!!!] )
    DispatcherMode = true, -- Dispatch Can Assign Units - [true = if there is active dispatch he who recived the alert and assign units, false = Regardless of whether Dispatch exists or not, the report will always be sent to all units    ]
    OffDutyActions = false, -- [false: if unit off duty you can't use his actions (Join Radio, Waypoint)] 
    Tablet = true, -- Tablet Animation  
    UpdateTimout = {
        ServerSide = 10000, -- Deafult: 10000 "Server Side" informations Update, Make it according your players avarage and your server power
        ClientPerformanceOn = 15000, -- Deafult: 15000 User "Client Side" informations Update while he active performance on settings
        ClientPerformanceOff = 20000, -- Deafult: 20000  User "Client Side" informations Update while performance disabled
    },
    -- << Keybinds & Commands >> its open source in [editable/cl_commands]
    Commands = {
        OpenList = 'list', -- Open List Command or false
        OpenDashboard = 'dash', --  Open Dash board Command or false
        Next = 'next_call', --   Go to next call
        Previous = 'previous_call', --   Go to previous call
        Respond = 'respond_call', --  Respond Call and set waypoint
    },
    Keybinds =  { 
        OpenList = '=',
        NUIKey = 'F11',
        Respond = 'G',
        Next = 'right',
        Previous = 'left',
        Dashboard = 'i', -- or false (The OpenDashboard Command must be actived)
    },
    -- << CCTV & Body Cams Settings >>
    RadioItem = 'radio',
    Recordings = {
        MaxVideos = 10, -- How many videos the player can Save ( Recommended 10 to 15 secends)
        RecordTime = 30, -- Max Video Time ( Recommended 30 to 50 secends)
    },
    CCTV = {
        Effect = 'scanline_cam_cheap',
        Strength = 0.5,
    },
    BodyCam = {
        Effect = 'scanline_cam_cheap',
        Strength = 0.5,
        Item = 'bodycam',
    },
    Debug = false, -- Enables debug mode, adding additional print statements for tracking operations
    Test = false, -- Includes dummy modules for development and testing purposes only
    
}

