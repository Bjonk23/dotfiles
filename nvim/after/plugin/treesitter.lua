require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "cpp", "vim", "lua", "java", "javascript", "rust", "json" }, 
  auto_install = true,
  sync_install = false,
  highlight = {
    enable = true  
  },


}
