return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {},
  config = function()
    require('toggleterm').setup()
  end,
  cmd = {
    'ToggleTerm'
  },
  keys = {
    { '<leader>t', '<CMD>ToggleTerm<CR>', desc = 'Toggle terminal' },
  },
}
