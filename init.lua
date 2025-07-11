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

--setting up keymaps for neotree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
--setting up keymaps for ToggleTerm (you will still need the toggleterm (number) command to open a terminal next to it)
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })

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

-- ssh -i "key location" -L 9999:localhost:9999 -L 9998:localhost:9998 -Y user@{ip addr} is a way to use codeuim chat over ssh after uncommenting the lines below
-- you can choose different ports on your machine if some are already in use
--vim.g.codeium_port_config = {
--  web_server = 9999,
--  chat_client = 9998,
--}
