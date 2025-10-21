Shared.JobsHub = {
    ['POLICE'] = {
        Title = Lang('Police_Title'),  -- Title for the Police section in the hub
        Dashboard = {
            CCTV = true,  -- CCTV in Map 
            Bodycams = true,  -- Bodycam Button 
            Bolo = true,  -- BOLO Page 
            Units = true,  -- Units In UI Map 
            Archives = true,  -- Archive Page 
            Chat = true,  -- Chat Page 
        },
        Jobs = {  -- Jobs accessible within the Police hub
            ['police'] = Lang('LSPD_Section'),  -- LSPD Section Job
            ['sheriff'] = Lang('Sheriff_Section'),  -- Sheriff Section Job
        },
    },
    ['EMS'] = {
        Title = Lang('EMS_Title'),  -- Title for the EMS section in the hub
        Dashboard = {
            CCTV = false,  -- CCTV in Map 
            Bodycams = true,  -- Bodycam Button 
            Bolo = false,  -- BOLO Page 
            Units = true,  -- Units In UI Map 
            Archives = true,  -- Archive Page 
            Chat = true,  -- Chat Page 
        },
        Jobs = {  -- Jobs accessible within the EMS hub
            ['ambulance'] = Lang('EMS_Section'),  -- EMS ambulance section job
        },
    },
}
