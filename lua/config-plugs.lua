-- Configuracion de tema ayu

vim.opt.termguicolors= true
vim.cmd [[
    colorscheme ayu
]]
-- "let ayucolor="dark"
--

-- "Ajustes para airline
vim.g[ 'airline#extensions#tabline#enabled' ] = 1  --" Mostrar buffers abiertos (como pestañas)
vim.g[ 'airline#extensions#tabline#fnamemod' ] = ':t'  --" Mostrar sólo el nombre del archivo
vim.g[ 'airline_theme' ]= 'ayu_mirage'  --"Tema para barra de estado


-- "Ajustes para plug de Indentado
vim.g[ 'indentLine_fileTypeExclude' ] = {'text','sh','help','terminal'} 
vim.g[ 'gindentLine_bufNameExclude' ] = {'NERD_tree','term:.*'}
vim.g[ 'gindentLine_defaultGroup' ] = 'SpecialKey'


--"Ancho de nerdtree
vim.g[ 'NERDTreeWinSize' ]= 22

