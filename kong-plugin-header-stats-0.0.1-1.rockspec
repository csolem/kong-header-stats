package = "kong-plugin-header-stats"
-- Inspired from https://github.com/Kong/kong-plugin/blob/master/kong-plugin-myplugin-0.1.0-1.rockspec
version = "0.0.1-1"
local pluginName = package:match("^kong%-plugin%-(.+)$")
supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/entur/kong-header-stats",
  tag = "0.0.1"
}
description = {
  summary = "Plugin to send metrics from custom headers to graphite",
  homepage = "http://getkong.org",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
