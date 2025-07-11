# lazyvim-config

**Preferred plugins and init.lua file. This repository is simply to get all plugin configurations at once.**

Credit for the plugins themselves goes to the authors:

* copilot: https://github.com/github/copilot.vim
* copilotchat: https://github.com/CopilotC-Nvim/CopilotChat.nvim
* vscode color: https://github.com/Mofiqul/vscode.nvim
* debugger: https://github.com/mfussenegger/nvim-dap?tab=readme-ov-file, https://github.com/mfussenegger/nvim-dap-python (plugin config:https://github.com/NeuralNine/config-files/blob/master/.config/nvim/lua/plugins/nvim-dap.lua )
* neotree: https://github.com/nvim-neo-tree/neo-tree.nvim
* jupyter: https://github.com/luk400/vim-jukit
* treesitter: https://github.com/nvim-treesitter/nvim-treesitter
* leetcode: https://github.com/kawre/leetcode.nvim
* toggleterm: https://github.com/akinsho/toggleterm.nvim
* barbeque: https://github.com/utilyre/barbecue.nvim?tab=readme-ov-file
* windsurf:  https://github.com/Exafunction/windsurf.nvim, nvim-cmp (required for windsurf): https://github.com/hrsh7th/nvim-cmp

To disable a plugin: add enabled = false in the same bracket that imports the plugin. 
example:

return {
  {
    "github/copilot.vim",
     enabled = false,
  }
}

**Additional notes on plugin installation and usage:**

Copilot and Copilot Chat:

To run the copilot plugins, you will need the latest version of node js. You will also need to enable the plugins since I disabled them by default (for resource usage reasons).

Windsurf:

Disabled by default for resource usage reasons.

For Jupyter:

To ensure support for  the jupyter plugin: "pip install pynvim" in the python environment you want to work with. sudo apt install ipython3 with it.
:JukitOut "command to activate python environment" is what you should use to launch an ipython3 session with your environment of choice.

For Debugger:
to ensure support for the python debugger: "pip install debugpy" in the python environment you want to work with.
:lua require("dap-python").setup("path to python environment") is what you can use to choose your virtual environment while already in a neovim session.
