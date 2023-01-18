-- You need Packer run 
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
-- ~/.local/share/nvim/site/pack/packer/start/packer.nvim
-- get newer neovim on ubuntu or debian see https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable
require("raffael.remap")
require("raffael.packer")


local set = vim.opt -- set options
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smartindent = true
set.backup = false
set.swapfile = false
set.writebackup = true
set.autoindent = true
set.hlsearch = true

set.laststatus = 2
set.hidden = true

set.undodir = "~/.vim/undodir"
set.undolevels = 1000
set.undoreload = 1000

set.number = true
set.relativenumber = true
set.mouse = a

set.scrolloff=8
set.signcolumn = "yes"
-- set.colorcolumn = "80"
set.updatetime = 50
