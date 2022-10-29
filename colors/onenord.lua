-- Refresh cache for local debugging and development purposes
if vim.g.onenord_debug == true then
  package.loaded["onenord"] = nil
  package.loaded["onenord.util"] = nil
  package.loaded["onenord.colors"] = nil
  package.loaded["onenord.colors.onenord"] = nil
  package.loaded["onenord.colors.onenordlight"] = nil
  package.loaded["onenord.theme"] = nil
end

local onenord = require("onenord")

onenord.load(false)
