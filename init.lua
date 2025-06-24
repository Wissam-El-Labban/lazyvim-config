-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.relativenumber = false
vim.opt.clipboard = "unnamedplus"
-- if you have installed a colorscheme, set it here. Am using vscode as an example
vim.cmd("colorscheme vscode")
vim.o.background = "dark"
