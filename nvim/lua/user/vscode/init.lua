local vscode = require('vscode-neovim')

vim.notify = vscode.notify

local keymaps = require("user.keymaps")
local opts = keymaps.default_opts()
keymaps.register_keymaps(keymaps.get_keymaps("lsp-keymaps"), opts)

local core = require("user.core")

require("user.vscode.cmds").setup()
