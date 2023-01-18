vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bf", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ps", vim.cmd.PackerSync)
vim.keymap.set("n", "<F2>", vim.cmd.Startify)
vim.keymap.set("n", "<F3>", vim.cmd.SSave)
vim.keymap.set("n", "<F5>", vim.cmd.TOhtml)
vim.keymap.set("n", "<F6>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle) 

--center searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- visual Select move with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--copy to systemcclipboard with leader y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
--quicklist fixing
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
