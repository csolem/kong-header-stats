
local BasePlugin = require "kong.plugins.base_plugin"
local req_get_headers = ngx.req.get_headers

local basic_serializer = require "kong.plugins.log-serializers.basic"

local HeaderStatsHandler = BasePlugin:extend()
HeaderStatsHandler.PRIORITY = 1
HeaderStatsHandler.VERSION = "0.0.1"

function HeaderStatsHandler:access(config)
  HeaderStatsHandler.super.access(self)

  local header_value = req_get_headers()[config.header_name]
  nginx.log(ngx.ERR, "Got header value " .. header_value)

  print("Got header value " .. header_value .. " from header name " .. config.header_name)
end



return HeaderStatsHandler
