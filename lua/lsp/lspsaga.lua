local keymap = vim.keymap.set

require('lspsaga').setup({
  ui = {
    border = 'rounded',
    title = true,
    winblend = 0,
    expand = "",
    collapse = "",
    preview = " ",
    code_action = "💡",
    diagnostic = "",
    incoming = " ",
    outgoing = " ",
    hover = " ",
  },
  preview = {
    lines_above = 0,
    lines_below = 10,
  },
  lightbulb = {
    enable = false,
    enable_in_insert = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  outline = {
    win_position = "right",
    win_with = "",
    win_width = 30,
    show_detail = false,
    auto_preview = false,
    auto_refresh = true,
    auto_close = true,
    custom_sort = nil,
  },
  symbol_in_winbar = {
    enable = true,
    separator = "  ",
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = true,
    color_mode = true,
  },
})

keymap("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")

keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")

keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")

keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>")

keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
