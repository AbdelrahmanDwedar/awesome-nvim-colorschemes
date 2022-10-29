local variants = require("barstrata.colors")
local cfg = require("barstrata.config").config
local c = variants[cfg.variant]

local barstrata = {}

barstrata.normal = {
  a = { fg = c.bg, bg = c.blue, gui = "bold" },
  b = { fg = c.text, bg = c.background1 },
  c = { fg = c.blueGray1, bg = c.none },
}

barstrata.insert = {
  a = { fg = c.bg, bg = c.teal, gui = "bold" },
  b = { fg = c.text, bg = c.background1 },
}

barstrata.visual = {
  a = { fg = c.bg, bg = c.bright_pink, gui = "bold" },
  b = { fg = c.text, bg = c.background1 },
}

barstrata.replace = {
  a = { fg = c.bg, bg = c.pink3, gui = "bold" },
  b = { fg = c.text, bg = c.background1 },
}
barstrata.command = {
  a = { fg = c.bg, bg = c.yellow, gui = "bold" },
  b = { fg = c.text, bg = c.background1 },
}

barstrata.inactive = {
  a = { fg = c.blueGray3, bg = c.background1, gui = "bold" },
  b = { fg = c.blueGray3, bg = c.background1 },
  c = { fg = c.blueGray3, bg = c.none },
}

return barstrata
