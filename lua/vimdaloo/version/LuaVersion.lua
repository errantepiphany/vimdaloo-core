import 'vimdaloo.version.SemanticVersion'

namespace 'vimdaloo.version' {
    ---
    -- @class vimdaloo.version.LuaVersion
    -- @display …version.LuaVersion
    -- @inherits vimdaloo.version.SemanticVersion
    class 'LuaVersion',
    extends 'vimdaloo.version.SemanticVersion' {

        --- Description.
        -- A semantic version singleton populated from [`_VERSION`](https://www.lua.org/manual/5.4/manual.html#pdf-_VERSION)
        -- @section Description

        --- API.
        --- @section API

        --- singleton
        -- @display instance
        -- @treturn vimdaloo.version.LuaVersion
        singleton = function(self)
            assert(_VERSION, 'unable to initialize LuaVersion: "_VERSION" global variable missing')
            local prefix = 'Lua '
            vimdaloo.version.SemanticVersion.new(self, prefix, _VERSION:gsub(prefix, ''))
        end,
    },
}
