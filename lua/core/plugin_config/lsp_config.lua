require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "solidity",
    "tsserver",
    "rust_analyzer",
  }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {noremap = true})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {noremap = true})
  vim.keymap.set('n', '<leader>ch', vim.lsp.buf.hover, {noremap = true})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {noremap = true})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implimentation, {noremap = true})
  vim.keymap.set('n', 'gr', require('telecopt.builtin').lsp_references, {noremap = true})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilites = capabilities,
}

require("lspconfig").solidity.setup {
  on_attach = on_attach,
  capabilites = capabilities,
}

require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  capabilites = capabilities,
}

require("lspconfig").rust_analyzer.setup {
  on_attach = on_attach,
  capabilites = capabilities,
}
