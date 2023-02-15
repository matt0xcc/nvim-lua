vim.g.mapleader = ' '
local keymap = vim.keymap

-- windows:
keymap.set('n', '<leader>ss', ':vsplit<Return><C-w>w', { silent = true })

keymap.set('n', '<leader>=', ':vertical resize +5<cr>', { silent = true })
keymap.set('n', '<leader>-', ':vertical resize -5<cr>', { silent = true })
keymap.set('n', '<leader>]', ':resize +5<cr>', { silent = true })
keymap.set('n', '<leader>[', ':resize -5<cr>', { silent = true })

keymap.set('n', '<leader><up>', '<cmd>wincmd k<cr>', { silent = true })
keymap.set('n', '<leader><down>', '<cmd>wincmd j<cr>', { silent = true })
keymap.set('n', '<leader><left>', '<cmd>wincmd h<cr>', { silent = true })
keymap.set('n', '<leader><right>', '<cmd>wincmd l<cr>', { silent = true })

-- key map
keymap.set('n', 'Z', '')
keymap.set('n', 'ZZ', '')

keymap.set('n', ')', '$')
keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')
keymap.set('n', 'U', '<c-r>')

keymap.set('n', '<c-a>', 'gg<S-v>G', { silent = true })
keymap.set('n', '<Leader>h', ':nohlsearch<cr>', { silent = true })

-- Packer
keymap.set('n', '<Leader>pi', '<cmd>PackerInstall<cr>')
keymap.set('n', '<Leader>ps', '<cmd>PackerSync<cr>')
keymap.set('n', '<Leader>pc', '<cmd>PackerClean<cr>')

-- yank: filename and pathname
keymap.set('n', '<Leader>yn', "<cmd>let @+ = expand('%:t')<cr>", { silent = true })
keymap.set('n', '<Leader>yp', "<cmd>let @+ = expand('%:p:h')", { silent = true })

keymap.set('n', '<Leader>w', '<cmd>w<cr>', { silent = true })
keymap.set('n', '<Leader>q', '<cmd>q<cr>', { silent = true })
keymap.set('n', '<Leader>.',
  function()
    if vim.opt.list:get() then
      vim.cmd("set nolist")
    else
      vim.cmd("set list")
    end
  end, { silent = true })

-- Plugins --

-- Folding
keymap.set('n', 'zj', require('ufo').goNextClosedFold, { silent = true })
keymap.set('n', 'zk', require('ufo').goPreviousClosedFold, { silent = true })
keymap.set('n', 'z=', require('ufo').openAllFolds, { silent = true })
keymap.set('n', 'z-', require('ufo').closeAllFolds, { silent = true })

-- lspsaga
keymap.set('n', '<Leader>gh', '<cmd>Lspsaga hover_doc<cr>', { silent = true })
-- go to definition
keymap.set('n', '<Leader>gd', '<cmd>Lspsaga lsp_finder<cr>', { silent = true })
-- go to references
keymap.set('n', '<Leader>gr', require('telescope.builtin').lsp_references, {})
keymap.set('n', '<Leader>gp', '<cmd>Lspsaga peek_definition<cr>', { silent = true })
keymap.set('n', '<Leader>ej', '<cmd>Lspsaga diagnostic_jump_next<cr>', { silent = true })
keymap.set('n', '<Leader>ek', '<cmd>Lspsaga diagnostic_jump_prev<cr>', { silent = true })

keymap.set('n', '<Leader>ls', '<cmd>Lspsaga outline<cr>', { silent = true })
keymap.set('n', '<Leader>ca', '<cmd>Lspsaga code_action<cr>', { silent = true })
keymap.set('n', '<Leader>rn', '<cmd>Lspsaga rename<cr>', { silent = true })

-- telescope
keymap.set('n', '<Leader>/', '<cmd>Telescope live_grep<cr>', { silent = true })
keymap.set('n', '<Leader>sd', '<cmd>Telescope treesitter<cr>', { silent = true })
keymap.set('n', '<Leader>sf', '<cmd>Telescope find_files<cr>', { silent = true })

-- formatting
keymap.set('n', '<Leader>ff', '<cmd><cr>', { silent = true })
