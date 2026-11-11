vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim',
	'https://github.com/navarasu/onedark.nvim',
	'https://github.com/folke/snacks.nvim',
	'https://github.com/coder/claudecode.nvim',
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/saghen/blink.lib', 
	{ src = 'https://github.com/saghen/blink.cmp', version = 'main' },
	'https://github.com/folke/which-key.nvim',
	'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/nvim-lua/plenary.nvim',
	'https://github.com/mfussenegger/nvim-dap',
	'https://github.com/GustavEikaas/easy-dotnet.nvim',
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/mason-org/mason-lspconfig.nvim',
})

require("plugins/lualine")
require("plugins/colorscheme")
require("plugins/claudecode")
require("plugins/blink")
require("plugins/treesitter")
require("plugins/dotnet")
require("plugins/mason")
require("plugins/lsp")
require("plugins/snacks")


require("oil").setup()
