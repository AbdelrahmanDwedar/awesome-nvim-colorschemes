local util = require("awesome-nvim-colorschemes.tokyonight.util")
local theme = require("awesome-nvim-colorschemes.tokyonight.theme")
local config = require("awesome-nvim-colorschemes.tokyonight.config")

local M = {}

function M._load(style)
  if style and not M._style then
    M._style = require("awesome-nvim-colorschemes.tokyonight.config").options.style
  end
  if not style and M._style then
    require("awesome-nvim-colorschemes.tokyonight.config").options.style = M._style
    M._style = nil
  end
  M.load({ style = style, use_background = style == nil })
end

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("awesome-nvim-colorschemes.tokyonight.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
