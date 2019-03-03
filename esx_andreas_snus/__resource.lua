resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Script where you can use the Swedish snus'

version '1.0.0'

server_scripts {
    'server/main.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua',
    'config.lua'
}

-- By Andreas