vim.g.bookmark_sign = '♥'
vim.g.bookmark_highlight_lines = 1

-- mm: add/remove a bookmark at current line
-- mi: add/edit/remove an annotation at current line

vim.keymap.set('n', 'ma', "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>")
vim.keymap.set('n', 'mn', "<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>")
