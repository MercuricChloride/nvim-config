require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "vim", "solidity" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true
  }
}
