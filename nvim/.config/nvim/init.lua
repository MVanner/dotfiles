-- init.lua
require('bootstrap')
require('options')
require('keymaps')

-- UI
require('plugins.catppuccin')
require('plugins.lualine')

-- Editor
require('plugins.treesitter')
require('plugins.fzf')
require('plugins.oil')
require('plugins.blink')
require('plugins.vim-tmux-navigator')

-- Language
require('lsp')
require('plugins.conform')

-- Debug + Test
require('plugins.dap')
require('plugins.neotest')
