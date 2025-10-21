local Locales = {
    ['EN'] = {
        -- Notifications
        NoAccess = 'You are not accessible',
        NoPlayer = 'Player not found',
        WayPoint = 'Waypoint set',
        OffDutyWayPoint = 'You can\'t locate off duty unit ',
        WatchUrSelf = "You can't watch yourself",
        Busy_OR_No_Item = "You can't watch this person",
        LostSignal = 'You lost connection to his bodycam',
        No_Radio = 'You don\'t have a radio ',
        JoinChannel = 'Connected To {channel} MHz ',
        OffDuty = 'You Off Duty now ',
        OnDuty = 'You On Duty now ',
        OnDispatch = 'Dispatch Mode : On',
        OffDispatch = 'Dispatch Mode : Off',
        OnBusy = 'Busy Mode : On',
        OffBusy = 'Busy Mode : Off',
        CallSign_Set = 'Callsign Changed To {callsign} ',
        UnFlagged = 'Vehicle :{plate} has been unflagged.',
        Veh_Not_Found = 'Vehicle :{plate} was not found in the flagged list',
        MemoryLimit = 'You have reached the maximum number of video records for this hub.',
        EmptyMSG = "You cannot send an empty message",
        
        CallRespond = "The call was accepted and Way Point was placed on the map",
        AlreadyRespond = "You Already responded the call",

        -- Add Flag Vehicle  (Its Shows in Ui)
        NotOwned = 'This vehicle is not owned by anyone',
        AlreadyFlagged = 'Vehicle :{plate} is already flagged.',
        Fail_Flag = 'Failed to flag the vehicle. Please try again',
        No_Results = "No matching results found",
        -- Other
        Female = 'Female',
        Male = 'Male',
        EMS_Title = 'EMS',
        Police_Title = 'Police',

        -- Sections
        LSPD_Section = 'LSPD',
        Sheriff_Section = 'SAHP',
        EMS_Section = 'EMS',

        -- Discord Units Webhook:
        No_Units ='There is no unit available',
        Units = "Active Units:",
        Title = "Active {hub} Units",
        Description = "\n`🟢 On Duty:` **{onduty}**\n`🔴 Off Duty:` **{offduty}**\n`👥 Total Units:` **{total}**",
        --- Commands & Keybinds (its in [client/editable/cl_commands])
        NUIKey_Keybind_Desc = 'NUI KEY', 
        Respond_Keybind_Desc = 'Respond Call',
        Next_Keybind_Desc = 'Next Call',
        Previous_Keybind_Desc = 'Previous Call',
        OpenDashboard_Keybind_Desc = 'Open Dashboard',
        
        OpenList_Command_Desc = 'Open Small Unit List (POLICE/EMS) Units',
        OpenDashboard_Command_Desc = 'Open Large Dashboard (POLICE/EMS) Units',
        Call_Spamming_Error =  "You can't spam please wait ...",
        Call_911_Desc = 'Request help from police units',
        Call_911a_Desc = 'Request anonymous help from police units',
        Call_997_Desc = 'Request help from ambulance units',
        Panic_Description = 'Panic button, to request help from available units',




        -- Dispatch Alerts [client/editable/cl_alerts]
        Call_911_Title = '911 - Incoming Call',
        Call_911a_Title = '911a - Incoming Call',
        Call_997_Title = '997 - Incoming Call',
        Calls_Message = 'From {name} at {street} : {msg}',
        Anonymous_Calls_Message = 'From anonymous: {msg}',

        StoreRobbery_Title = '10-5 - Store Robbery',
        StoreRobbery_Message = 'A {gender} is currently robbing a store near {street}',
    
        HouseRobbery_Title = '10-6 - House Robbery',
        HouseRobbery_Message = 'A {gender} is currently robbing a house near {street}',
    
        TruckRobbery_Title = '10-7 - Truck Robbery',
        TruckRobbery_Message = 'A {gender} is currently robbing a Bank Truck near {street}',
    
        FleecaRobbery_Title = '10-8 - Fleeca Robbery',
        FleecaRobbery_Message = 'A {gender} is currently robbing Fleeca bank near {street}',
    
        BobcatRobbery_Title = '10-9 - Bobcat Robbery',
        BobcatRobbery_Message = 'A {gender} is currently robbing Bobcat Warehouse near {street}',
    
        VangelicoRobbery_Title = '10-10 - Vangelico Robbery',
        VangelicoRobbery_Message = 'A {gender} is currently robbing Vangelico store near {street}',
    
        PaletoRobbery_Title = '10-11 - Paleto Bank Robbery',
        PaletoRobbery_Message = 'A {gender} is currently robbing Paleto bank near {street}',
    
        UnionRobbery_Title = '10-12 - Union Robbery',
        UnionRobbery_Message = 'A {gender} is currently robbing Union bank near {street}',
    
        PacificRobbery_Title = '10-13 - Pacific Robbery',
        PacificRobbery_Message = 'A {gender} is currently robbing Pacific bank near {street}',
    
        Shooting_Title = '10-31 - Shots Fired',
        Shooting_Vehicle_Title = '10-31V - Shots Fired',
        
        Shooting_Message = '{gender} is firing a {gun} on {street}',
        Shooting_Vehicle_Message = '{gender} is firing a {gun} on {street} from a {car} vehicle with a {color} color and a {plate} plate',
        
        Vehicle_Theft_Title = '10-64 Vehicle Theft',
        Vehicle_Theft_Message = '{gender} is stealing a {car} vehicle on {street} with a {color} color and a {plate} plate',
        Vehicle_Theft_Message_OutCar = '{gender} is stealing a vehicle on {street} ',
        
        Panic_Title = 'Panic Button',
        Panic_Message = '{name} is in a panic situation at {street}',



        -- CCTV Radar
        Vehicle_Scanned = 'Vehicle Scanned and added to logs',
        Wait_Between_Checks = 'Please wait a moment between checks!',
        Vehicle_Inspected = 'This vehicle has been inspected and there are no violations recorded on it',
        Flagged_Vehicle_Scanned = 'A flagged vehicle with plate <b>%s</b> has been scanned by radar, here is all its information at %s.',
        Vehicle_Scanned_Report = 'A vehicle with plate <b>%s</b> has been scanned by radar, here is all its information at %s, %s',
        Report_Details = '<b>Details of the report:</b>',
        Vehicle = 'Vehicle:',
        Plate = 'Plate:',
        Reason = 'Reason:',
        Officer = 'Officer:',
        Priority = 'Priority:',
        Flagged_Date = 'Flagged Date:',
        
    },
    ['AR'] = {
        -- الاشعارات
        NoAccess = 'لا يمكنك الوصول',
        NoPlayer = 'اللاعب غير موجود',
        WayPoint = 'تم تحديد نقطة الوصول',
        OffDutyWayPoint = 'لا يمكنك تحديد موقع وحدة غير متواجدة في الخدمة',
        WatchUrSelf = "لا يمكنك مراقبة نفسك",
        Busy_OR_No_Item = "لا يمكنك مراقبة هذا الشخص",
        LostSignal = 'لقد فقدت الاتصال بجهازه',
        No_Radio = 'ليس لديك جهاز راديو',
        JoinChannel = 'تم الاتصال بالقناة {channel} ',
        OffDuty = 'أنت خارج الخدمة الآن',
        OnDuty = 'أنت في الخدمة الآن',
        OnDispatch = 'وضع مركز العمليات: مفعل',
        OffDispatch = 'وضع مركز العمليات: غير مفعل',
        OnBusy = 'وضع الانشغال: مفعل',
        OffBusy = 'وضع الانشغال: غير مفعل',
        CallSign_Set = 'تم تغيير النداء إلى {callsign}',
        UnFlagged = 'المركبة :{plate} تم إزالة التعميم عنها.',
        Veh_Not_Found = 'المركبة :{plate} لم يتم العثور عليها في قائمة المركبات المعممة.',
        MemoryLimit = 'لقد وصلت إلى الحد الأقصى من تسجيلات الفيديو لهذا الجهاز.',
        EmptyMSG = "لايمكنك ارسال رسالة خالية",
        CallRespond = "تم قبول البلاغ وتحديد موقعه في الخريطة",
        AlreadyRespond = "لقت قبلت البلاغ بالفعل",
        -- Add Flag Vehicle (Its Shows in Ui)
        NotOwned = 'هذه المركبة غير مملوكة لأي شخص',
        AlreadyFlagged = 'المركبة :{plate} معممة بالفعل.',
        Fail_Flag = 'فشل في تحديد المركبة. يرجى المحاولة مرة أخرى.',
        No_Results = "لم يتم العثور على نتائج مطابقة",
        -- Other
        Female = 'امرأة',
        Male = 'رجل',
        EMS_Title = 'الإسعاف',
        Police_Title = 'الشرطة',
        -- Sections
        LSPD_Section = 'شرطة لوس',
        Sheriff_Section = 'شرطة المقاطعات',
        EMS_Section = 'خدمات الطوارئ',
        -- Discord Units Webhook:
        No_Units ='لايوجد وحدات متصلة',
        Units = "الوحدات المتصلة:",
        Title = "واحدات {hub} المتصلة ",
        Description = "\n`🟢 داخل الخدمة:` **{onduty}**\n`🔴 خارج الخدمة:` **{offduty}**\n`👥 مجموع الوحدات:` **{total}**",
        --- Commands & Keybinds (its in [client/editable/cl_commands])
        NUIKey_Keybind_Desc = 'NUI KEY', 
        Respond_Keybind_Desc = 'Respond Call',
        Next_Keybind_Desc = 'Next Call',
        Previous_Keybind_Desc = 'Previous Call',
        OpenDashboard_Keybind_Desc = 'Open Dashboard',
    
        OpenList_Command_Desc = 'فتح قائمة الوظائف (الشرطة/الطوارئ) ',
        OpenDashboard_Command_Desc = 'فتح لوحة التحكم (الشرطة/الطوارئ) ',
        Call_Spamming_Error = "لا يمكنك إرسال الرسائل المتكررة، يرجى الانتظار...",
        Call_911_Desc = 'طلب المساعدة من وحدات الشرطة',
        Call_911a_Desc = 'طلب المساعدة من الشرطة بشكل مجهول',
        Call_997_Desc = 'طلب المساعدة من وحدات الاسعاف',
        Panic_Description = 'زر الطوارئ ، لطلب المساعدة من الوحدات المتاحة',
    
        -- البلاغات [client/editable/cl_alerts]
        Call_911_Title = '911 - بلاغ وارد',
        Call_911a_Title = '911a - بلاغ وارد',
        Call_997_Title = '997 - بلاغ وارد',
        Calls_Message = ' {msg} : [{name}] ',
        Anonymous_Calls_Message = '{msg} :من مجهول',
    
        StoreRobbery_Title = '10-5 - سرقة بقالة',
        StoreRobbery_Message = '{gender} يقوم حالياً بسرقة بقالة بالقرب من {street}.',
    
        HouseRobbery_Title = '10-6 - سرقة منزل',
        HouseRobbery_Message = ' {gender} يقوم حالياً بسرقة منزل بالقرب من {street}',
    
        TruckRobbery_Title = '10-7 - سرقة شاحنة',
        TruckRobbery_Message = ' {gender} يقوم حالياً بسرقة شاحنة بنكية بالقرب من {street}',
    
        FleecaRobbery_Title = '10-8 - سرقة بنك فليكا',
        FleecaRobbery_Message = ' {gender} يقوم حالياً بسرقة بنك فليكا بالقرب من {street}',
    
        BobcatRobbery_Title = '10-9 - سرقة مستودع بوبكات',
        BobcatRobbery_Message = '{gender} يقوم حالياً بسرقة مستودع بوبكات بالقرب من {street}',
    
        VangelicoRobbery_Title = '10-10 - سرقة المجوهرات',
        VangelicoRobbery_Message = ' {gender} يقوم حالياً بسرقة متجر المجوهرات بالقرب من {street}',
    
        PaletoRobbery_Title = '10-11 - سرقة بنك باليتو',
        PaletoRobbery_Message = ' {gender} يقوم حالياً بسرقة بنك باليتو بالقرب من {street}',
    
        UnionRobbery_Title = '10-12 - سرقة بنك الاتحاد',
        UnionRobbery_Message = ' {gender} يقوم حالياً بسرقة بنك الاتحاد بالقرب من {street}',
    
        PacificRobbery_Title = '10-13 - سرقة البنك المركزي',
        PacificRobbery_Message = '{gender} يقوم حالياً بسرقة البنك المركزي بالقرب من {street}',
    
        Shooting_Title = '10-31 - إطلاق نار',
        Shooting_Vehicle_Title = '10-31V - إطلاق نار من مركبة',
      
        Shooting_Message = '{gender} يقوم بإطلاق النار باستخدام {gun} في {street}',
        Shooting_Vehicle_Message = '{gender} يقوم بإطلاق النار باستخدام {gun} من مركبة {car} بلون {color} ولوحة {plate} في {street}',
      
        Vehicle_Theft_Title = ' 10-64  - سرقة مركبة',
        Vehicle_Theft_Message = '{gender} يسرق سيارة {car} في {street} بلون {color} ورقم لوحة {plate}',
        Vehicle_Theft_Message_OutCar = '{street}  يسرق مركبة في {gender} ',
        
        Panic_Title = 'حالة طارئة'  ,
        Panic_Message = '{name} في حالة طوارئ في {street}',

        -- الرادار والكاميرات
        Vehicle_Scanned = 'تم فحص المركبة وإضافتها إلى السجلات',
        Wait_Between_Checks = 'يرجى الانتظار بين محاولات فحص المركبة..',
        Vehicle_Inspected = 'تم فحص هذه المركبة ولا توجد مخالفات مسجلة عليها',
        Flagged_Vehicle_Scanned = 'تم فحص مركبة مشبوهة برقم اللوحة <b>%s</b> بواسطة الرادار، هنا جميع معلوماتها عند %s.',
        Vehicle_Scanned_Report = 'تم فحص مركبة برقم اللوحة <b>%s</b> بواسطة الرادار، هنا جميع معلوماتها عند %s، %s',
        Report_Details = '<b>تفاصيل التقرير:</b>',
        Vehicle = 'المركبة:',
        Plate = 'رقم اللوحة:',
        Reason = 'السبب:',
        Officer = 'الضابط:',
        Priority = 'الأولوية:',
        Flagged_Date = 'تاريخ التعميم:',
        
    },
    
}



function Lang(key, params)
    local lang = Shared.Settings.Lang or "EN" 
    local langTable = Locales[lang]
    
    if not langTable then
        print("Language not supported: " .. lang)
        return key 
    end
    
    local template = langTable[key]
    if not template then
        print("Lang Not Found: " .. key)
        return key 
    end
    if params then
        for placeholder, value in pairs(params) do
            template = template:gsub("{" .. placeholder .. "}", tostring(value))
        end
    end
    return template
end