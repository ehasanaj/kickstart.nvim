-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
    config = function()
      local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { desc = desc })
      end

      map('<C-h>', '<cmd> TmuxNavigateLeft<CR>', 'window left')
      map('<C-l>', '<cmd> TmuxNavigateRight<CR>', 'window right')
      map('<C-j>', '<cmd> TmuxNavigateDown<CR>', 'window down')
      map('<C-k>', '<cmd> TmuxNavigateUp<CR>', 'window up')
    end,
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
}
