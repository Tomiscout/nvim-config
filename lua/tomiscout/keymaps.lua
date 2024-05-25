---- Buffers

-- Compiler

-- Open compiler
vim.api.nvim_set_keymap('n', '`', '<cmd>CompilerOpen<cr>', { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap(
  'n',
  '<leader>`',
  '<cmd>CompilerStop<cr>' -- (Optional, to dispose all tasks before redo)
    .. '<cmd>CompilerRedo<cr>',
  { noremap = true, silent = true }
)

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '~', '<cmd>CompilerToggleResults<cr>', { noremap = true, silent = true })
