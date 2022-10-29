local M = {}

function M.get()
	return {
		OverseerPENDING = { fg = cp.grey },
		OverseerRUNNING = { fg = cp.yellow },
		OverseerSUCCESS = { fg = cp.green },
		OverseerCANCELED = { fg = cp.overlay2 },
		OverseerFAILURE = { fg = cp.red },
		OverseerTask = { fg = cp.blue },
		OverseerTaskBorder = { fg = cp.sky },
		OverseerOutput = { fg = cp.text },
		OverseerComponent = { fg = cp.yellow },
		OverseerField = { fg = cp.green },
	}
end

return M
