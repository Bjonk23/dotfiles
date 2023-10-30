vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
  end
})


require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'rust_analyzer',
  }
})
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
  lsp.buffer_autoformat()
end)
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
end, opts)



lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})
lsp.setup()
local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.csharp_ls.setup {}
lspconfig.ltex.setup({
  filetypes = { "markdown", "text", },
})





require('mason-lspconfig').setup_handlers({
  function(servername)
    lspconfig[servername].setup({
      capabilities = lsp_capabilities,
    })
  end
})
