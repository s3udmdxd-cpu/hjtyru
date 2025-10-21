const locales  = {
    EN: {
        "ListTitle": " List",
        "DashTitle": " Dashboard",

        // pages
        "Overview": '<i class="fa-solid fa-house-fire"></i> Overview',
        "Calls": '<i class="fa-solid fa-bell-on"></i> Calls',
        "BOLO": '<i class="fa-solid fa-car-on"></i> BOLO',
        "Archive": '<i class="fa-solid fa-folders"></i> Archive',
        "Logs": '<i class="fa-solid fa-file-circle-exclamation"></i> Logs',

        "Exit": "Exit the dashboard",
        "Maximize": "Maximize the dashboard",
        "Shrink": "Shrink the dashboard to focus on left pages",
        "Share": "Share your written notes with other",
        "ViewNotf": "View all your notifications here",

        "ActiveCalls": "Active Calls",
        "Viewinmap": "View in map",
        "hidefromMap": "Hide from map",

        "ActiveUnits": "Active Units",
        "ViewAll": "View All",

        "CallsLog": "Calls Log",
        "clearAll": "Clear All",

        "Nodispatchers": "There are no dispatchers.",

        "OnDuty": "On Duty",
        "OffDuty": "Off Duty",
        "Busy": "On Duty",
        "Off": "OFF",
        

        "RespondCall": "Respond",
        "smallhubUnits": "Assigned unit {unitas} ",

        "unitsactive": "{NewTotal} Units Active",
        
        "Typeyourmessage": "Type your message",
        
        "dutysettingsTitle": "Duty Settings",
        
        "dutySettingsLang_1_1": "Callsign",
        "dutySettingsLang_1_2": "Enter your callsign here, and press Enter.",
        
        "dutySettingsLang_2_1": "Duty",
        "dutySettingsLang_2_2": "Switch your duty status on or off.",
        
        "dutySettingsLang_3_1": "Busy",
        "dutySettingsLang_3_2": "Indicate you are occupied and unavailable.",
        
        "dutySettingsLang_4_1": "Dispatch",
        "dutySettingsLang_4_2": "Handle incoming tasks or alerts.",
        
        "callssettingsTitle": "Calls Settings",

        "callsSettingsLang_2_1": "Show Calls",
        "callsSettingsLang_2_2": "Display a police alerts and notifications.",

        "callsSettingsLang_3_1": "Split Calls",
        "callsSettingsLang_3_2": "Enable call splitting feature.",

        "callsSettingsLang_4_1": "Splited Calls Transparency",
        "callsSettingsLang_4_2": "Adjust background transparency.",

        "callsSettingsLang_5_1": "Mute Calls",
        "callsSettingsLang_5_2": "Silence incoming call notifications.",

        "callsSettingsLang_6_1": "Latest Calls",
        "callsSettingsLang_6_2": "Show the latest calls on the list.",

        "callsSettingsLang_7_1": "Auto Delete Calls",
        "callsSettingsLang_7_2": "Amount of minutes to auto delete (1-30).",
        
        "resetCallsettings": "Reset Calls Settings",
        "resetAllsettings": "Reset All Settings",


        "hubsettingsTitle": "Hub Settings",

        "hubSettingsLang_1_title": "Transparency",
        "hubSettingsLang_1_description": "Adjust background transparency.",
        
        "hubSettingsLang_2_title": "Performance Mode",
        "hubSettingsLang_2_description": "Optimize for better performance.",

        "hubSettingsLang_3_title": "Chat Notifications",
        "hubSettingsLang_3_description": "Receive notifications for new messages.",

        "hubSettingsLang_4_title": "Notifications Badge",
        "hubSettingsLang_4_description": "Show the number of unread messages.",

        "hubSettingsLang_5_title": "Mute Effects",
        "hubSettingsLang_5_description": "Silence game sound effects.",


        "dashboardsettingsTitle": "Dashbaord Settings",

        "dashboardSettingsLang_1_title": "Disable Messages",
        "dashboardSettingsLang_1_description": "Disable receiving new messages.",
        
        "dashboardSettingsLang_2_title": "Alerts Auto Storage",
        "dashboardSettingsLang_2_description": "Configure alerts storage limit.",
        
        "dashboardSettingsLang_3_title": "Logs Auto Storage",
        "dashboardSettingsLang_3_description": "Configure Logs storage limit.",
        
        "dashboardSettingsLang_4_title": "Notification Auto Storage",
        "dashboardSettingsLang_4_description": "Configure notification storage limit.",
        
        "dashboardSettingsLang_5_title": "Hover-Based Transparency",
        "dashboardSettingsLang_5_description": "Dispatch fade a little when the mouse away.",

        "listingsettingsTitle": "Listing Settings",

        "listingSettingsLang_1_title": "Display Off-Duty",
        "listingSettingsLang_1_description": "Show off-duty units in the list.",
        
        "listingSettingsLang_2_title": "Display Busy Duty",
        "listingSettingsLang_2_description": "Show busy-duty units in the list.",
        
        "listingSettingsLang_3_title": "Duty Status Line",
        "listingSettingsLang_3_description": "Show the duty status line for each unit.",
        
        "listingSettingsLang_4_title": "Unit Grade",
        "listingSettingsLang_4_description": "Display the grade of each unit.",
        
        "listingSettingsLang_5_title": "Unit Location",
        "listingSettingsLang_5_description": "Show the location of each unit.",
        
        "listingSettingsLang_6_title": "Unit Radio",
        "listingSettingsLang_6_description": "Display the radio status of each unit.",


        "alerts_noactivecalls_title": "No Active Calls",
        "alerts_noactivecalls_text": "No dispatch calls",
        "alerts_unitsassigned": "{total} units assigned",
        "alerts_notimespecified": "No time specified",
        "alerts_priority": "Priority {priority}",
        "alerts_editmode": "Edit Mode",
        "alerts_ft": "ft",

        "alerts_assignUnit": "Assign Units",
        "alerts_selectAll": "Select All",
        "alerts_sendalert": "Send",
        "alerts_reply_title": "Send Reply To Call",
        "alerts_reply_text": "Send a response to call report",


        "page_loading": "Loading",

        "are_you_sure": "ARE YOU SURE?",
        "remove_this_alert": "You want to remove this alert?",

        "remove_this_log": "You want to remove this log?",

        "Yes": "Yes",
        "No": "No",
        "Send": "Send",
        "Cancel": "Cancel",
        "Save": "Save",
        "Copy": "Copy",
        "Description": "Description",
        "Please_Wait": "Please wait a moment...",
        "Adding_Veh": "Adding the vehicle to BOLO...",
        "Sending": "Sending...",
        "Succes_Sent_Reply": "Your response has been sent successfully!",
        "Succes_Sent_Log": "Log has been sent successfully!",
        "Error_Chars": "Message must be less than 300 characters!",
        "Error_Select": "Check that a unit is selected!",
        "Share_Log": "Share Log",
        "Delete_Log": "Delete Log",
        "Remove_Veh": "Remove Vehicle",
        
        "ShareAlertLog": "Share Alert Log",
        "ClearAll": "Clear All",
        "ShowAll": "Show All",
        "Search": "Search",
        "All_Vehicles": "All Vehicles",
        "Private_archive": "Private Videos Archive",
        "Public_archive": "Public Videos Archive",
        "ViewMine": "View Mine",
       
        "Share_req_veh": "Share requested vehicle",
        "Share_notes": "Share my notes",
        "SendMessage": "Send Message",
        "sender_not_found": "Sender is unavailable",
        
        "Removed": "Removed...",
        "Additional_Information": "Additional Information",
        
        "Noting_written": "You don't have any notes written about the units",
        "Sent_notes": "The unit notes has been successfully sent",

        "Video":'Video',
        "Photo":'Photo',
        'MediaShared':'The {soruceType} has been successfully sent',
        'ShareMedia':'Share {soruceType}',
        
        'Remove_Photo':'Remove Photo',
        'Remove_Video':'Remove Video',
        'sure_remove_video':'You want to remove <b>{videotitle}</b>?',
        'Play_Video':'Play Video',
        'More_Details':'More Details',
        
        'remove_notifaction':'You want to remove this notification?',
        'remove_plate':'You want to remove flag from <b> {vehicleKeyPlate} </b>?',

        'ArchiveVideo':'Video titled <b> {title}</b> recorded by <b> {officer}</b> {streetHTML}',
        'Vehicle_BOLO': 'Requested vehicle, a <b> {vehicle} </b> with the plate number <b> {plate}',
        "on_e": "on",
        'priority':'Priority',
        'normal':'Normal',
        'higher':'Higher',
        'Private':'Private',
        'Private_Normal':'Normal (Private)',
        'Private_Higher':'Higher (Private)',
        "Bolo_Desc": "On <b> {month},  {day} {year} </b>, Officer <b> {officer}</b> submitted a  {priority} priority request for a <b> {vehicle} </b> (Plate:  {plate} ). The vehicle is needed due to <b> {reason} </b>. This request emphasizes the urgency of ensuring public safety and effective response capabilities.",
        "Bolo_Desc2": "On <b> {date} </b>, Officer <b> {officer}</b> submitted a  {priority} priority request for a <b> {vehicle} </b> (Plate:  {plate} ). The vehicle is needed due to <b> {reason} </b>. This request emphasizes the urgency of ensuring public safety and effective response capabilities.",
        "VehicleDetails": "<li><b>Vehicle:</b>  {vehicle} </li><li><b>Plate:</b>  {plate} </li><li><b>Priority:</b>  {priority} </li><li><b>Officer:</b>  {officer} </li>",
        "Details": 'Details:',
        'Search_Results': 'Search Results',
        'No_matching': 'No matching records found',

        'AddNewVeh': 'Add New Vehicle',
        'EnterPlate': 'Enter details to add the vehicle to BOLO',
        'ReasonDialog': 'Reason (description)',
        'PlateDialog': 'Plate',
        'VideoDeatils': 'Details of the video',
        'Title': 'Title',
        'Recorded by': 'Recorded by',
        'Location': 'Location',
        'Time of Record': 'Time of Record',
        "NoPlates": 'No plates available to scan',
        "FiledLimit": 'Please adhere to the limit in the fields',
        "InCorrectFiles": 'Please fill in all the information correctly.',
        'ScreenShotReady' : 'your screenshot ready in log (log maximum is 25)',
        'VideoReady' : 'your video ready in log (log maximum is 25)',

        'unknown_error' : 'An unknown error has occurred!',
        'title_big' : 'Title must be less than 200 characters, and the description must be less than 400 characters.',
        'no_title_and_text' : 'There must be a title and description.',
        'there_is_error' : 'There appears to be an error in the data!',
        
        'CreatedOn' : 'created on',
        'Delete': 'Delete',
        'Reply': 'Reply',
        'Close': 'Close',
        'Accept': 'Accept',
        'NotesListUnits': 'He shared notes about the modules units are:',
        'SharedNoteNotify': '<b> {SenderName} </b> has shared the <b>notes</b> he wrote about the units with you, click to view the details.',
        'MSG_Notify': 'sent you a new <b>message</b>',
        'SharedPhotoMSG': '<b> {SenderName} </b> has shared with you a <b>photo</b> titled <b> {title}</b>',
        'SharedVideoMSG': '<b> {SenderName} </b> has shared with you a <b>video</b> titled <b> {title}</b>',
        'SharedLogMSG': '<b> {SenderName} </b> has shared with you a <b>log</b> titled ({title}) ',
        'SharedBOLOMSG': '<b> {SenderName} </b> has shared with you a <b>requested vehicle</b> titled ( {eventData.data.title} ) {dateText}',
        'Unknown' : 'Unknown',
        
        'Checking_Vehicle' : 'Checking Vehicle',
        'Vehicle' : 'Vehicle',
        'Priority' : 'Priority',
        'Officer' : 'Officer',
        'Date' : 'Date',

        'Vehicle_is' : 'Vehicle is',
        'Cleared' : 'Cleared',

        'RadarVeh':' <div>Vehicle</div><div> {vehicle}</div>',
        'RadarPri':' <div>Priority</div><div> {priority}</div>',
        'RadarOffi':' <div>Officer</div><div> {officer}</div>',
        'RadarDate':' <div>Date</div><div>  {month},  {day}  {year}</div>',

        'DeleteAllLogs': 'You want to delete all messages and saved logs in the dispatch?',
        'DeleteAllCalls': 'You want to delete all saved alerts in the dispatch?',
        'DeleteAllNotifications': 'You want to delete all saved notifications?',

        'CamInstruction_1': 'USE <b class="highlight-text">MOUSE SCROLL</b> TO ZOOM IN/OUT',
        'CamInstruction_2': 'USE <b class="highlight-text">F11</b> TO TOGGLE UI MOUSE',

        'Screenshot': 'Screenshot',
        'Recording': 'Recording',
        'RecordingNow': 'Recording',
        'CurrentDate': 'CURRENT DATE AND TIME',
        'VehicleInfo_Radar': 'VEHICLE INFORMATION',
        'Radar': 'Radar',
        'NRM_text': 'NRM',
        'NGTV_text': 'NGTV',
        'THRML_text': 'THRML',
        
        
        'PublicVideos': 'Public Videos',
        'PrivateCaptures': 'Private Captures',
        'Search_Placeholder': 'Enter any details...',
        'Search_Placeholder_Bolo': 'Enter vehicle details...',
        'Search_Placeholder_Call': 'Enter call details...',
        'AddCar': 'Add Car',
        'Notifications_title': 'Notifications',
        'logsTitle': 'Logs',
        'Search_Nearby': 'Scan Nearby Vehicle Plate',
        'Scanning': 'Scanning',
        
        'exitVideoPlayer': 'Exit the media player',
        'maximizeVideo': 'Maximize the media',
        'copyVideoLink': 'Copy media link',
        'ShareThisVideo': 'Share this media',

        'message': 'Message',
        'log': 'Log',
        'notes': 'Notes',
        'photo': 'Photo',
        'video': 'Video',
        'bolo': 'BOLO',

        'Jan': 'Jan',
        'Feb': 'Feb',
        'Mar': 'Mar',
        'Apr': 'Apr',
        'May': 'May',
        'Jun': 'Jun',
        'Jul': 'Jul',
        'Aug': 'Aug',
        'Sep': 'Sep',
        'Oct': 'Oct',
        'Nov': 'Nov',
        'Dec': 'Dec',
    },
    AR: {
        "ListTitle": " قائمة",
        "DashTitle": " لوحة تحكم",
        // الصفحات
        "Overview": '<i class="fa-solid fa-house-fire"></i> عام',
        "Calls": '<i class="fa-solid fa-bell-on"></i> البلاغات',
        "BOLO": '<i class="fa-solid fa-car-on"></i> المركبات',
        "Archive": '<i class="fa-solid fa-folders"></i> الأرشيف',
        "Logs": '<i class="fa-solid fa-file-circle-exclamation"></i> السجلات',
    
        "Exit": "الخروج من لوحة التحكم",
        "Maximize": "تكبير لوحة التحكم",
        "Shrink": "تصغير لوحة التحكم",
        "Share": "مشاركة ملاحظاتك",
        "ViewNotf": "عرض الإشعارات",
    
        "ActiveCalls": "المكالمات النشطة",
        "Viewinmap": "عرضها في الخريطة",
        "hidefromMap": "إخفائها من الخريطة",
    
        "ActiveUnits": "الوحدات النشطة",
        "ViewAll": "عرض الكل",
    
        "CallsLog": "سجل المكالمات",
        "clearAll": "مسح الكل",
    
        "Nodispatchers": "لا يوجد مركز عمليات",
    
        "OnDuty": "في الخدمة",
        "OffDuty": "خارج الخدمة",
        "Busy": "مشغول",
        "Off": "متوقف",


        "RespondCall": "قبول البلاغ",
        "smallhubUnits": "${unitas} وحدة مشاركة",

        "unitsactive": "عدد الوحدات: {NewTotal}",

        
        "Typeyourmessage": "اكتب رسالتك",

        "dutysettingsTitle": "اعدادات الخدمة",

        "dutySettingsLang_1_1": "الوحدة",
        "dutySettingsLang_1_2": "ضع هنا رمز النداء الخاص بك, واضغط ادخال.",

        "dutySettingsLang_2_1": "الخدمة",
        "dutySettingsLang_2_2": "تفعيل وايقاف حالة خدمتك.",

        "dutySettingsLang_3_1": "مشغول",
        "dutySettingsLang_3_2": "تفعيل حالتك كمشغول حالياً لضمان التركيز.",

        "dutySettingsLang_4_1": "مركز العمليات",
        "dutySettingsLang_4_2": "سوف تتولى جميع المهام والتنبيهات.",


        "callssettingsTitle": "اعدادات البلاغات",

        "callsSettingsLang_2_1": "عرض البلاغات",
        "callsSettingsLang_2_2": "عرض تنبيهات وإشعارات البلاغات.",

        "callsSettingsLang_3_1": "فصل مربع البلاغات",
        "callsSettingsLang_3_2": "تفعيل ميزة فصل البلاغات.",

        "callsSettingsLang_4_1": "شفافية البلاغات المفصول",
        "callsSettingsLang_4_2": "تعديل شفافية خلفية البلاغات.",

        "callsSettingsLang_5_1": "كتم البلاغات",
        "callsSettingsLang_5_2": "كتم إشعارات البلاغات الواردة.",

        "callsSettingsLang_6_1": "أحدث البلاغات",
        "callsSettingsLang_6_2": "عرض أحدث البلاغات في القائمة.",

        "callsSettingsLang_7_1": "حذف البلاغات تلقائيًا",
        "callsSettingsLang_7_2": "الحد الاقصى للوقت لحذف البلاغ (1-30).",

        "resetCallsettings": "اعادة تعيين الاعدادات",
        "resetAllsettings": "اعادة تعيين الاعدادات",

        "hubsettingsTitle": "اعدادت القائمة",

        "hubSettingsLang_1_title": "الشفافية",
        "hubSettingsLang_1_description": "ضبط شفافية الخلفية.",
        
        "hubSettingsLang_2_title": "وضع الأداء",
        "hubSettingsLang_2_description": "تحسين الأداء للحصول على تجربة أفضل.",
        
        "hubSettingsLang_3_title": "إشعارات الدردشة",
        "hubSettingsLang_3_description": "استلام إشعارات لرسائل الدردشة الجديدة.",
        
        "hubSettingsLang_4_title": "شارة الاشعارات",
        "hubSettingsLang_4_description": "عرض عدد رسائل الاشعارات غير المقروءة.",
        
        "hubSettingsLang_5_title": "كتم المؤثرات",
        "hubSettingsLang_5_description": "كتم الاصوات والمؤثرات في القائمة.",


        "dashboardsettingsTitle": "اعدادت اللوحة",
        
        "dashboardSettingsLang_1_title": "تعطيل الرسائل",
        "dashboardSettingsLang_1_description": "تعطيل استلام الرسائل الجديدة نهائيا.",
        
        "dashboardSettingsLang_2_title": "تخزين البلاغات",
        "dashboardSettingsLang_2_description": "إعداد حد لتخزين البلاغات.",
        
        "dashboardSettingsLang_3_title": "تخزين السجلات",
        "dashboardSettingsLang_3_description": "إعداد حد لتخزين السجلات.",
        
        "dashboardSettingsLang_4_title": "تخزين التنبيهات",
        "dashboardSettingsLang_4_description": "إعداد حد لتخزين التنبيهات.",
        
        "dashboardSettingsLang_5_title": "نظام الشفافية الديناميكي",
        "dashboardSettingsLang_5_description": "تخفيف التلاشي عند تحريك الماوس بعيداً.",
        
        "listingsettingsTitle": "اعدادت عرض الوحدات",

        "listingSettingsLang_1_title": "عرض المسجلين خروجهم",
        "listingSettingsLang_1_description": "عرض الوحدات المسجلين خروجهم في القائمة.",
        
        "listingSettingsLang_2_title": "عرض المشغولين",
        "listingSettingsLang_2_description": "عرض الوحدات المنشغلة في القائمة.",
        
        "listingSettingsLang_3_title": "عرض خط حالة الخدمة",
        "listingSettingsLang_3_description": "عرض خط حالة الخدمة لكل وحدة.",
        
        "listingSettingsLang_4_title": "عرض الرتبة",
        "listingSettingsLang_4_description": "عرض رتبة كل وحدة بجانب الاسم.",
        
        "listingSettingsLang_5_title": "موقع الوحدة",
        "listingSettingsLang_5_description": "عرض زر موقع الوحدة.",
        
        "listingSettingsLang_6_title": "راديو الوحدة",
        "listingSettingsLang_6_description": "عرض زر حالة الراديو لكل وحدة.",

        "alerts_noactivecalls_title": "لا يوجد حالات نشطة",
        "alerts_noactivecalls_text": "لا توجد اشعارات فعالة",
        "alerts_unitsassigned": "{total} وحدة مشاركة",
        "alerts_notimespecified": "لا يوجد وقت",
        "alerts_priority": "الأولوية {priority}",
        "alerts_editmode": "وضع التعديل",
        "alerts_ft": "م",

        "alerts_assignUnit": "تعيين وحدة",
        "alerts_selectAll": "تحديد الكل",
        "alerts_sendalert": "إرسال",
        "alerts_reply_title": "الرد على البلاغ",
        "alerts_reply_text": "إرسال رد على البلاغ",
        
        "page_loading": "جاري التحميل",

        "are_you_sure": " هل انت متاكد؟",
        "remove_this_alert": "من انك تريد ازالة هذا البلاغ؟",

        "remove_this_log": "من انك تريد ازالة هذا السجل؟",

        "Yes": "موافق",
        "No": "إلغاء",
        "Send": "إرسال",
        "Cancel": "إلغاء",
        "Save": "حفظ",
        "Copy": "نسخ",
        "Description": "الوصف",
        "Please_Wait": "يرجى الانتظار بين محاولاتك...",
        "Adding_Veh": "يتم إضافة المركبة...",
        "Sending": "جاري الإرسال...",
        "Succes_Sent_Reply": "تم إرسال ردك بنجاح!",
        "Succes_Sent_Log": "تم إرسال السجل بنجاح!",
        "Error_Chars": "يجب أن تكون الرسالة أقل من 300 حرف!",
        "Error_Select": "تأكد من تحديد وحدة!",
        "Share_Log": "مشاركة السجل",
        "Delete_Log": "إزالة السجل",
        "Remove_Veh": "إزالة المركبة",

        "ShareAlertLog": "مشاركة سجل التنبيه",
        "ClearAll": "مسح الكل",
        "ShowAll": "إظهار الكل",
        "Search": "بحث",
        "All_Vehicles": "جميع المركبات",
        "Private_archive": "أرشيف تسجيلاتي الخاصة",
        "Public_archive": "أرشيف الفيديوهات العامة",
        "ViewMine": "عرض تسجيلاتي",
        "Share_req_veh": "مشاركة المركبة المطلوبة",
        "Share_notes": "مشاركة ملاحظاتي",
        "SendMessage": "إرسال رسالة",
        "sender_not_found": "المرسل غير متوفر",
        "Removed": "تم الإزالة...",
        "Additional_Information": "معلومات إضافية",
        "Noting_written": "ليس لديك أي ملاحظات مكتوبة عن الوحدات",
        "Sent_notes": "تم إرسال ملاحظات الوحدة بنجاح",
        "Video": "فيديو",
        "Photo": "صورة",
        "MediaShared": "تم إرسال {soruceType} بنجاح",
        "ShareMedia": "مشاركة {soruceType}",
        'Remove_Photo':'حذف الصورة',
        "Remove_Video": "إزالة الفيديو",
        "sure_remove_video": "هل تريد إزالة <b>{videotitle}</b>؟",
        "Play_Video": "تشغيل الفيديو",
        "More_Details": "تفاصيل البلاغ",
        "remove_notifaction": "هل تريد إزالة هذا الإشعار؟",
        "remove_plate": "هل تريد إزالة التعميم من <b>{vehicleKeyPlate}</b>؟",
        "ArchiveVideo": "فيديو بعنوان <b>{title}</b> تم تسجيله بواسطة <b>{officer}</b> {streetHTML}",
        "Vehicle_BOLO": "المركبة المطلوبة، وهي <b>{vehicle}</b> تحمل رقم اللوحة <b>{plate}</b>",
        "on_e": "في",
        'priority':'الأولوية',
        "normal": "عادي",
        "higher": "هام",
        "Private": "خاص",
        "Private_Normal": "عادي (خاص)",
        "Private_Higher": "هام (خاص)",
        "Bolo_Desc": "في <b> {month}, {day} {year} </b>، قدم الضابط <b> {officer} </b> طلبًا ذا أولوية  {priority} لمركبة <b> {vehicle}</b> (اللوحة:  {plate} ). المركبة مطلوبة بسبب <b> {reason} </b>. يبرز هذا الطلب ضرورة ضمان السلامة العامة وقدرات الاستجابة الفعالة.",
        "Bolo_Desc2": "في <b> {date} </b>، قدم الضابط <b> {officer} </b> طلبًا ذا أولوية  {priority} لمركبة <b> {vehicle}</b> (اللوحة:  {plate} ). المركبة مطلوبة بسبب <b> {reason} </b>. يبرز هذا الطلب ضرورة ضمان السلامة العامة وقدرات الاستجابة الفعالة.",
      
      
        "VehicleDetails": "<li><b>المركبة:</b>  {vehicle} </li><li><b>رقم اللوحة:</b>  {plate} </li><li><b>الأولوية:</b>  {priority} </li><li><b>الضابط:</b>  {officer} </li>",

        "Details": ':المعلومات',
        'Search_Results': 'نتائج البحث',
        'No_matching': 'لم يتم العثور على سجلات مطابقة',

        "AddNewVeh": "إضافة مركبة جديدة",
        "EnterPlate": "أدخل التفاصيل لإضافة تعميم على المركب",
        "ReasonDialog": "السبب (الوصف)",
        "PlateDialog": "اللوحة",
        'VideoDeatils': 'معلومات الفديو',
        "Title": "العنوان",
        "RecordedBy": "تم التسجيل بواسطة",
        "Location": "الموقع",
        "TimeOfRec": "وقت التسجيل",
        "NoPlates": ' لايوجد لوحات لقرائتها..',
        "FiledLimit": 'يرجى الالتزام بالحد الأقصى في الحقول',
        "InCorrectFiles": 'يرجى ملء جميع المعلومات بشكل صحيح.',
        'ScreenShotReady' : 'لقطة الشاشة الخاصة بك جاهزة  (الحد الأقصى للسجل هو 25)',
        'VideoReady' : 'الفديو الخاص بك جاهزة  (الحد الأقصى للسجل هو 25)',

        'unknown_error' : 'حدث خطأ غير معروف!',
        'title_big' : 'يجب أن يكون العنوان أقل من 200 حرف، والوصف أقل من 400 حرف.',
        'no_title_and_text' : 'يجب أن يكون هناك عنوان ووصف.',
        'there_is_error' : 'يبدو أن هناك خطأ في البيانات!',

        'CreatedOn' : 'تم الإنشاء في',
        'Delete': 'ازالة',
        'Reply': 'رد',
        'Close': 'اغلاق',
        'Accept': 'قبول',
        'NotesListUnits': 'شارك ملاحظات حول الوحدات، وهي:',
        'SharedNoteNotify': '<b> {SenderName} </b> قد شارك معك <b>الملاحظات</b> التي كتبها عن الوحدات، انقر لعرض التفاصيل.',
        'MSG_Notify': 'أرسل لك <b>رسالة</b> جديدة',
        'SharedPhotoMSG': 'قام <b> {SenderName} </b> بمشاركة <b>صورة</b>، بعنوان <b> {title}</b>',
        'SharedVideoMSG': 'قام <b> {SenderName} </b> بمشاركة <b>فيديو</b>، بعنوان <b> {title}</b>',
        'SharedLogMSG': 'قام <b> {SenderName} </b> بمشاركة <b>سجل</b>، بعنوان ({title})',
        'SharedBOLOMSG': 'قام <b> {SenderName} </b> بمشاركة <b>مركبة مطلوبة</b>، بعنوان ( {eventData.data.title} ) {dateText}',
        'Unknown' : 'غير معروف',
        
        'Checking_Vehicle' : 'التحقق من المركبة',

        'RadarVeh': ' <div>المركبة</div><div> : {vehicle}</div>',
        'RadarPri': ' <div>أولوية</div><div> : {priority}</div>',
        'RadarOffi': ' <div>الضابط</div><div> : {officer}</div>',
        'RadarDate': ' <div>التاريخ</div><div> : {month},  {day}  {year}</div>',
        
        

        'Vehicle_is' : 'المركبة',
        'Cleared' : 'سليمة',
        'DeleteAllLogs': 'هل ترغب في حذف جميع الرسائل والسجلات المحفوظة؟',
        'DeleteAllCalls': 'هل ترغب في حذف جميع البلاغات المحفوظة؟',
        'DeleteAllNotifications': 'هل ترغب في حذف جميع الإشعارات المحفوظة؟',
        


        'CamInstruction_1': 'استخدم <b class="highlight-text">سكرول الفأرة</b> للتكبير/التصغير',
        'CamInstruction_2': 'استخدم <b class="highlight-text">F11</b> لإظهار الفأرة او إخفاءها',
        
        'Screenshot': 'لقطة شاشة',
        'Recording': 'تسجيل فيديو',
        'RecordingNow': 'جاري التسجيل',
        'CurrentDate': 'التاريخ والوقت',
        'VehicleInfo_Radar': 'معلومات المركبة',
        'Radar': 'رادار المركبات',
        'NRM_text': 'الأفتراضي',
        'NGTV_text': 'الليلي',
        'THRML_text': 'الحراري',
        'PublicVideos': 'الفيديوهات العامة',
        'PrivateCaptures': 'اللقطات الخاصة',
        'Search_Placeholder': 'ادخل التفاصيل...',
        'Search_Placeholder_Bolo': 'ادخل تفاصيل المركبة...',
        'Search_Placeholder_Call': 'ادخل تفاصيل البلاغ...',
        'AddCar': 'اضافة',
        'Notifications_title': 'الاشعارات',
        'logsTitle': 'السجلات',
        'Search_Nearby': 'قراءة لوحة المركبة',
        'Scanning': 'قراءة اللوحة',
        'exitVideoPlayer': 'اغلاق المشغل',
        'maximizeVideo': 'تكبير الشاشة',
        'copyVideoLink': 'نسخ الرابط',
        'ShareThisVideo': 'مشاركة',

        'message': 'رسالة',
        'log': 'سجل',
        'notes': 'ملاحظات',
        'photo': 'صورة',
        'video': 'فيديو',
        'bolo': 'سيارة مطلوبة',

        'Jan': 'يناير',
        'Feb': 'فبراير',
        'Mar': 'مارس',
        'Apr': 'أبريل',
        'May': 'مايو',
        'Jun': 'يونيو',
        'Jul': 'يوليو',
        'Aug': 'أغسطس',
        'Sep': 'سبتمبر',
        'Oct': 'أكتوبر',
        'Nov': 'نوفمبر',
        'Dec': 'ديسمبر',
    },
    
    
};
