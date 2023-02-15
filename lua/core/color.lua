vim.g.everforest_diagnostic_line_highlight = 1
vim.cmd('colorscheme everforest')

vim.fn.sign_define({
  {
    name = 'DiagnosticSignError',
    text = '',
    texthl = 'DiagnosticSignError',
    linehl = 'ErrorLine',
  },
  {
    name = 'DiagnosticSignWarn',
    text = '',
    texthl = 'DiagnosticSignWarn',
    linehl = 'WarningLine',
  },
  {
    name = 'DiagnosticSignInfo',
    text = '',
    texthl = 'DiagnosticSignInfo',
    linehl = 'InfoLine',
  },
  {
    name = 'DiagnosticSignHint',
    text = '',
    texthl = 'DiagnosticSignHint',
    linehl = 'HintLine',
  },
})

require 'todo-comments'.setup()

require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    "Comment"
  },
  exclude = {}, -- table: groups you don't want to clear
})
