local M = {}

function M.get()
	return {
		LeapMatch = {
			fg = ucolors.vary_color({ latte = "#222222" }, ucolors.brighten(cp.green, 0.3)),
			style = { "underline", "nocombine" },
		},
		LeapLabelPrimary = {
			fg = ucolors.vary_color({ latte = "#222222" }, cp.base),
			bg = ucolors.vary_color({ latte = ucolors.brighten(cp.red, 0.4) }, ucolors.brighten(cp.green, 0.3)),
			style = { "nocombine" },
		},
		LeapLabelSecondary = {
			fg = ucolors.vary_color({ latte = "#222222" }, cp.base),
			bg = ucolors.vary_color({ latte = ucolors.brighten(cp.sky, 0.3) }, cp.sky),
			style = { "nocombine" },
		},
	}
end

return M
