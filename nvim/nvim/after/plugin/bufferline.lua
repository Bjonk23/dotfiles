require("bufferline").setup{
  options = {
--     hover = {
--       enabled = true,
--       delay = 200,
--       reveal = {'close'}

--     },
      indicator = {
        icon = " | ",
        style = "underline",
    },
    diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count,level)
        local icon = level:match("error") and "" or ""
        return " " .. icon .. count
      end,
    },
    highlights = {
       fill = { 
         bg = {
            attribute = "fg",
            highlight = "None"
         }
       } 
    }


}

vim.keymap.set("n", "<leader>m",":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>n",":BufferLineCyclePrev<CR>")
