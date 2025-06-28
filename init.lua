-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.relativenumber = false
vim.opt.clipboard = "unnamedplus"
-- if you have installed a colorscheme, set it here. Am using vscode as an example
vim.cmd("colorscheme vscode")
vim.o.background = "dark"

-- setting up dap adapter to debug in python
--require("dap-python").setup("~/environments/jupiter/bin/python") just an example of a python vrtual environment to include DAP adapter. pip install debugpy

-- to ensure that neotree works properly, we need to set the file watcher
require('neo-tree').setup {
  file_system = {
    use_libuv_file_watcher = true,
  },
}
