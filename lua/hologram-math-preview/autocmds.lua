local hologram_math_preview = require("hologram-math-preview")

local augroup = vim.api.nvim_create_augroup("Hologram-math-preview", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.md" },
	group = augroup,
	callback = function(ev)
		vim.schedule(hologram_math_preview.show_all_eq)
	end,
})
