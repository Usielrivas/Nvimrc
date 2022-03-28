-- Configuracion de tema ayu

vim.opt.termguicolors = true
vim.cmd [[
    colorscheme dracula
    hi Normal guibg=#1d1f26
    command! -nargs=0 Prettier :CocCommand prettier.formatFile

 ]]

-- "Ajustes para plug de Indentado
vim.g["indentLine_fileTypeExclude"] = {"text", "sh", "help", "terminal"}
vim.g["gindentLine_bufNameExclude"] = {"NERD_tree", "term:.*"}
vim.g["gindentLine_defaultGroup"] = "SpecialKey"

vim.g["gindentLine_defaultGroup"] = "SpecialKey"
vim.g["gindentLine_defaultGroup"] = "SpecialKey"

vim.g["NERDTreeWinSize"] = 28

--"Automatiza la instalacion de plug para Coc
vim.g[ 'coc_global_extensions' ]= { 'coc-css','coc-html','coc-emmet','coc-html-css-support','coc-tsserver','coc-vetur','coc-phpls','coc-prettier' }
