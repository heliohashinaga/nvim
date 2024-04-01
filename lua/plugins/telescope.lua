return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'sharkdp/fd', build = 'make' },
    'nvim-treesitter/nvim-treesitter',
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font }
  },
  config = function()
    pcall(require('telescope').load_extension, 'fzf')
	  
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>fd', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    --vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    --vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end
}