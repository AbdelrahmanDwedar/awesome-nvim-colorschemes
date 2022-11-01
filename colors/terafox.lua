if vim.g.nightfox_debug then
  require("nightfox.util.reload")()
end

require("nightfox.config").set_fox("terafox")
require("nightfox.main").load()
