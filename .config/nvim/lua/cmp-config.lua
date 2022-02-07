-- cmp LSP completion
-- Adding Loaders to load snippets
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").load()
local cmp = require "cmp"
-- LSP Symbols
local lsp_symbols = {
    Text = "   (Text) ",
    Method = "   (Method)",
    Function = "   (Function)",
    Constructor = "   (Constructor)",
    Field = " ﴲ  (Field)",
    Variable = "[] (Variable)",
    Class = "   (Class)",
    Interface = " ﰮ  (Interface)",
    Module = "   (Module)",
    Property = " 襁 (Property)",
    Unit = "   (Unit)",
    Value = "   (Value)",
    Enum = " 練 (Enum)",
    Keyword = "   (Keyword)",
    Snippet = "   (Snippet)",
    Color = "   (Color)",
    File = "   (File)",
    Reference = "   (Reference)",
    Folder = "   (Folder)",
    EnumMember = "   (EnumMember)",
    Constant = " ﲀ  (Constant)",
    Struct = " ﳤ  (Struct)",
    Event = "   (Event)",
    Operator = "   (Operator)",
    TypeParameter = "   (TypeParameter)",
}
cmp.setup{
  sources = {
              { name = 'luasnip' },
              { name = 'nvim_lua' },
              { name = 'nvim_lsp' },
              { name = 'buffer' },
              { name = 'cmdline' },
            },
  snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
  mapping = {
     ["<s-tab>"] = cmp.mapping.select_prev_item(),
     ["<tab>"] = cmp.mapping.select_next_item(),
     ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
     ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
     ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
     ['<CR>'] = cmp.mapping.confirm({ select = true })
  },
  formatting = {
    format = function(entry, item)
      item.kind = lsp_symbols[item.kind]
      item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[Snippet]",
            })[entry.source.name]
        return item
      end,
    },
  documentation = {
    border = "rounded",
  },
  window = {
    completion = { -- rounded border; thin-style scrollbar
      border = 'rounded',
      scrollbar = '║',
  },
},
}
