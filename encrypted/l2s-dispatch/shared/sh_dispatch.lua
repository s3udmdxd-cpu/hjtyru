Shared.Dispatch = {
    AlertsDealy = 3,-- in secends
    AutoBlip = true, -- Automatically adds a notification blip when you receive an alert (no need to respond)
    DefaultAlerts  = {
        ['Shooting'] = {
            Enable = true,
            Departments = {'POLICE'},
            WhiteListGuns = { 'WEAPON_GRENADE', 'WEAPON_BZGAS', 'WEAPON_MOLOTOV','WEAPON_STICKYBOMB','WEAPON_PROXMINE','WEAPON_SNOWBALL', "WEAPON_SNSPISTOL_MK2", 'WEAPON_PAINTBALL', 'WEAPON_PIPEBOMB','WEAPON_BALL','WEAPON_SMOKEGRENADE','WEAPON_FLARE','WEAPON_PETROLCAN','WEAPON_FIREEXTINGUISHER','WEAPON_HAZARDCAN', 'WEAPON_RAYCARBINE', 'WEAPON_STUNGUN'},
            WhiteListLocations = {
                [1] = {label = "Ammunation 1", coords = vector3(13.53, -1097.92, 29.8),  radius = 20},
                [2] = {label = "Ammunation 2", coords = vector3(821.96, -2163.09, 29.62), radius = 20},
            },
        },
    },
    CallCommands = {
        TimeOut = 2 * 60000, -- in millesecends
        Calls = {
            {Enable = true, Title = Lang('Call_911_Title'),  Command = '911' ,  Description = Lang('Call_911_Desc'),  Departments = {'POLICE'},  anonymous = false},
            {Enable = true, Title = Lang('Call_911a_Title'), Command = '911a' , Description = Lang('Call_911a_Desc'), Departments = {'POLICE'},  anonymous = true},
            {Enable = true, Title = Lang('Call_997_Title'),  Command = '997' ,  Description = Lang('Call_997_Desc'),  Departments = {  'EMS' },  anonymous = false},
        },
    },
    Panic = {
        Command = 'panic', -- Command or false
        Description = Lang('Panic_Description'), -- Command Description
        Departments = {'EMS', 'POLICE'},
    },
}

