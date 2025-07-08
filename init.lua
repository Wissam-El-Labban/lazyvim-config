-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.relativenumber = false
vim.opt.clipboard = "unnamedplus"
-- if you have installed a colorscheme, set it here. Am using vscode as an example
vim.cmd("colorscheme vscode")
vim.o.background = "dark"

-- setting up dap adapter to debug in python
--require("dap-python").setup("~/environments/jupiter/bin/python") just an example of a python vrtual environment to include DAP adapter. pip install debugpy
-- :lua require("dap-python").setup("~/environments/jupiter/bin/python") is what you can do to choose a python environment to debug from while already inside neovim

-- making sure that treesitter (a language parser meant to enhance the coding experience) is always up to date and is ready for the languages we want.
require("lazy").setup({
	{ "nvim-treesitter/nvim-treesitter", branch = "master", lazy = false, build = ":TSUpdate" },
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline",
		"python3",
		"java",
		"cpp",
		"html",
	},
})

-- for those that are interested in practicing leetcode in python3, uncomment the below lines:
--require("leetcode").setup({
--  lang = "python3",
--})
