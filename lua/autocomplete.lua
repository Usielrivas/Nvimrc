local cmp = require "cmp"

cmp.setup(
{
   snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
   end
},
mapping = {
   ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
   ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
   ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
   ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
   ["<C-e>"] = cmp.mapping(
   {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close()
   }
   ),
   ["<CR>"] = cmp.mapping.confirm({select = true}), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
   ['<Tab>'] = function(fallback)
   if cmp.visible() then
      cmp.select_next_item()
   else
      fallback()
   end
   end,
   ['<S-Tab>'] = function(fallback)
   if cmp.visible() then
      cmp.select_prev_item()
   else
      fallback()
   end
end

},
sources = cmp.config.sources(
{
{name = "nvim_lsp"},
{name = "path"},
{name = "buffer"}
}
)
}
)

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.

-- local servers = { "solargraph", 'tsserver', "emmet_ls" }
-- for _, lsp in pairs(servers) do
--   require('lspconfig')[lsp].setup {
--   capabilities = capabilities,
--   }
-- end
require("lspconfig").tsserver.setup{
on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,

root_dir = function(fname)
return vim.fn.getcwd()
end,

filetypes= {"html","javascriptreact","typescriptreact"}

}

require("lspconfig").solargraph.setup{

on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,
root_dir = function(fname)
return vim.fn.getcwd()
end
}

require("lspconfig").emmet_ls.setup{
on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,

filetypes= {"html","css","eruby","typescriptreact", "javascriptreact"},
includeLanguages= {
    javascript= "javascriptreact",
}

}
--
require'lspconfig'.cssls.setup{
on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,
root_dir = function(fname)
return vim.fn.getcwd()
end,
filetypes= {"html","css","sass"}



}


require'lspconfig'.html.setup{
on_attach = on_attach,
flags = {
-- This will be the default in neovim 0.7+
debounce_text_changes = 150,
},

capabilities = capabilities,
root_dir = function(fname)
return vim.fn.getcwd()
end


}
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
