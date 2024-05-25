return {
  'rcarriga/nvim-notify',
  version = '*',
  dependencies = {},
  config = function()
    vim.notify = require 'notify'
  end,
}
