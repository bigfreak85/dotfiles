require('onedark').load()
require('onedark').setup {
	transparent = true,
	style = 'deep',
}

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.api.nvim_set_hl(0, "ctermbg", { bg = "none" })
vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
vim.api.nvim_set_hl(0, "EndofBuffer", { bg = "none" })
vim.api.nvim_set_hl(0, "Structure", { bg = "none" })
vim.api.nvim_set_hl(0, "Special", { bg = "none" })


