require'trouble'.setup({
  position = "right",
  icons = false,
  use_diagnostic_signs=true })

vim.keymap.set("n","<leader>tt",":TroubleToggle<CR>")
