require('nvim-treesitter.configs').setup {

  ensure_installed = {
    "c", 
    "lua", 
    "rust", 
    "json",
    "javascript", 
    "typescript", 
    "go", 
    "gomod", 
    "vim",
    "haskell",
    "html",
    "toml",
    "bash"
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
  }

}
