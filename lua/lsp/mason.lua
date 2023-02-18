local on_attach = function(_, bufnr)
  -- format on save
  vim.api.nvim_create_autocmd('BufWritePre', {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  },
}


require("lspconfig").bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
  },
}

local clangd_capabilities = capabilities

clangd_capabilities.textDocument.semanticHighlighting = true
clangd_capabilities.offsetEncoding = "utf-8"

require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = clangd_capabilities,

  cmd = {
    "clangd",
    "--background-index",
    "--pch-storage=memory",
    "--clang-tidy",
    "--suggest-missing-includes",
    "--cross-file-rename",
    "--completion-style=detailed",
  },

  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
}

require("lspconfig").cmake.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
  },
}

require("lspconfig").golangci_lint_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
  },
}

require("lspconfig").marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
  },
}

require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
  },
}
