vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function (event)
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
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.setup()
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()


require('mason-lspconfig').setup_handlers({
  function(servername)
    lspconfig[servername].setup({
      capabilities = lsp_capabilities,
    })
  end
})
