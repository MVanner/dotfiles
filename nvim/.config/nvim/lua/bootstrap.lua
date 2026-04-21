-- lua/bootstrap.lua
-- vim.pack (Neovim 0.12+) handles install and loading via full GitHub URLs.

if not vim.pack then
  vim.notify('bootstrap.lua requires Neovim 0.12+', vim.log.levels.ERROR)
  return
end

local plugins = {
  'https://github.com/catppuccin/nvim',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/seblyng/roslyn.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/ibhagwan/fzf-lua',
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/Saghen/blink.cmp',
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/nvim-neotest/neotest',
  'https://github.com/Issafalcon/neotest-dotnet',
  'https://github.com/stevearc/conform.nvim',
  'https://github.com/christoomey/vim-tmux-navigator',
}

vim.pack.add(plugins)
