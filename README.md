# lazyvim-config

preferred plugins and init lua file. This repository is simply to get all plugin configurations at once.

credit for the plugins themselves goes to the authors:

copilot: https://github.com/github/copilot.vim
copilotchat: https://github.com/CopilotC-Nvim/CopilotChat.nvim
vscode color: https://github.com/Mofiqul/vscode.nvim
debugger: https://github.com/mfussenegger/nvim-dap?tab=readme-ov-file, https://github.com/mfussenegger/nvim-dap-python (plugin config:https://github.com/NeuralNine/config-files/blob/master/.config/nvim/lua/plugins/nvim-dap.lua )
neotree: https://github.com/nvim-neo-tree/neo-tree.nvim


init lua file contents are what should be used if you want a colorscheme to persist (in our case its vscode), dap adapter setup for python environment, and to ensure that neotree remains consistent with directory and file changes. 

to disable a plugin: add enabled = false in the same bracket that imports the plugin. 
example:

return {
  {
    "github/copilot.vim",
     enabled = false,
  }
}

to run the copilot plugins, you will need the latest version of node js.
