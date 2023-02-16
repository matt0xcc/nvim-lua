local opt = vim.opt

opt.number = true
opt.relativenumber = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.title = true
opt.titlestring = "%F - 0xcc"
opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true

opt.mouse = 'a'
opt.clipboard:append('unnamedplus')

opt.autoread = true
opt.autowriteall = true

opt.autoindent = true
opt.smartindent = false
opt.smarttab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.wrap = true
opt.autochdir = false

opt.ignorecase = true
opt.smartcase = true

opt.foldenable = true
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldcolumn = '0'
opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

opt.list = true
opt.swapfile = false
opt.autoread = true
opt.autoread = true

opt.signcolumn = 'yes'
opt.list = true

opt.cursorline = true
opt.termguicolors = true
opt.fillchars = "eob: "
opt.spelllang = "en"
opt.list = false
opt.listchars = {
  tab = "↔ ",
  eol = "↩",
  space = ".",
  extends = "◀",
  precedes = "▶",
}


opt.spell = false

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 300
    })
  end
})

opt.updatetime = 300
opt.timeoutlen = 1000
opt.ttimeoutlen = 0

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

opt.shortmess = { s = true, I = true }
opt.showmode = false
opt.compatible = false
