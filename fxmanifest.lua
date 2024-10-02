fx_version 'cerulean'
author 'MysticV Loadingscreen'
description 'Loadingscreen developed by CaydenDev and PeleonDev'
version '1.2.0'

games { 'gta5' }

loadscreen 'index.html'
loadscreen_manual_shutdown 'yes'
loadscreen_cursor 'yes'

client_script 'client.lua'
server_script 'server.lua'

files {
    'index.html',
    'song.mp3'
}

server_scripts { '@mysql-async/lib/MySQL.lua' }
