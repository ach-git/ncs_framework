fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_fxv2_oal 'yes'

description 'NextCitizen, a powerful FiveM framework RolePlay-Based'
version '1.0.0-alpha'

--[[
    Localization
]]

shared_scripts {
    "src/localization/core/*.lua",
}

files {
    "src/localization/locales/*.lua",
}

--[[
    NCS Main
]]

shared_scripts {
    -- NCS Core
    "src/core/shared.lua",
    "src/core/events/shared/*.lua",
    -- NCS Constant
    "src/constant/*.lua",
    -- NCS Enum
    "src/enum/*.lua",
    -- NCS Class
    "src/class/**/shared/_constructor.lua",
    "src/class/**/shared/functions/*.lua",
    -- NCS Api
    "src/api/**/_define.lua",
    "src/api/**/shared/*.lua",
    -- NCS Modules
    "src/modules/**/_define.lua",
    "src/modules/**/shared/*.lua",
    "src/modules/**/shared/functions/*.lua",
    "src/modules/**/shared/events/*.lua",
    "src/modules/**/shared/tasks/*.lua",
}

server_scripts {
    -- Vendors
    "src/vendors/oxmysql/oxmysql.js",
    -- NCS Core
    "src/core/server.lua",
    "src/core/events/server/*.lua",
    -- NCS Class
    "src/class/**/server/_constructor.lua",
    "src/class/**/server/functions/*.lua",
    -- NCS API
    "src/api/**/server/*.lua",
    -- NCS Modules
    "src/modules/**/server/*.lua",
    "src/modules/**/server/functions/*.lua",
    "src/modules/**/server/events/*.lua",
    "src/modules/**/server/tasks/*.lua"
}

client_scripts {
    -- NCS Core
    "src/core/client.lua",
    "src/core/events/client/*.lua",
    -- NCS Class
    "src/class/**/client/_constructor.lua",
    "src/class/**/client/functions/*.lua",
    -- NCS API
    "src/api/**/client/*.lua",
    -- NCS Modules
    "src/modules/**/client/*.lua",
    "src/modules/**/client/functions/*.lua",
    "src/modules/**/client/events/*.lua",
    "src/modules/**/client/tasks/*.lua"
}

--[[
    Post NCS Load
]]

shared_scripts {
    -- NCS Export
    "src/core/export.lua",
    "src/api/**/_export.lua",
    "src/modules/**/_export.lua",
};

--[[
    Testing files
]]

server_script "test/server.lua"
client_script "test/client.lua"
shared_script "test/shared.lua"

--[[
    Web files
]]

ui_page "src/web/dist/index.html"
files {
    "src/web/dist/index.html",
    "src/web/dist/**/*"
}
