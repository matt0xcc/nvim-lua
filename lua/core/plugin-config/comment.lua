-- gcc: block current line
-- gc: select in visual mode and comment
require('Comment').setup({
  ignore = '^$'
})

require('toggleterm').setup({
  direction = 'float',
  open_mapping = [[<c-\>]]
})
