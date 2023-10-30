local cmp = require('cmp')
local cmp_select_opts = { behavior = cmp.SelectBehavior.Select }



cmp.setup({
  sources = { { name = "nvim_lsp" }, { name = "path" } },
  mappping = {
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-n>'] = cmp.mapping.abort(),
    ['<C-j>'] = cmp.mapping.scroll_docs(-4),
    ['<C-k>'] = cmp.mapping.scroll_docs(4),
    ['<Up>'] = cmp.mapping.select_prev_item(cmp_select_opts),
    ['<Down>'] = cmp.mapping.select_next_item(cmp_select_opts),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select.prev_item(cmp_select_opts)
      else
        cmp.complete()
      end
    end),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select.prev_item(cmp_select_opts)
      else
        cmp.complete()
      end
    end),
  },
  snippets = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    documentation = {
      max_width = 60,
      max_hight = 60,
    }
  },
  formatting = {
    fields = { 'abbr', 'menu', 'kind' },
    format = function(entry, item)
      local shortname = {
        nvim_lsp = "LSP",
        nvim_lua = "nvim"
      }
      local menuname = shortname[entry.source.name] or entry.source.name
      item.menu = string.format('[%s]', menuname)
      return item
    end,
  }


})
