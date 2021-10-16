-- Configuracion de tema ayu

vim.opt.termguicolors= true
vim.cmd [[
    colorscheme ayu
]]
-- "let ayucolor="dark"
--


-- "Ajustes para plug de Indentado
vim.g[ 'indentLine_fileTypeExclude' ] = {'text','sh','help','terminal'} 
vim.g[ 'gindentLine_bufNameExclude' ] = {'NERD_tree','term:.*'}
vim.g[ 'gindentLine_defaultGroup' ] = 'SpecialKey'



