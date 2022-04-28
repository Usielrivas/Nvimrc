
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/AppData/Local/nvim/plug_vim')

-- Los plugins van aquí
-- ....
-- "Cierra comillas y llaves automaticamnete
Plug 'Raimondi/delimitMate'
-- Dracula
Plug ( 'dracula/vim', { as= 'dracula' } )
--"plug para Indentado y no perder las buenas practicas de estructurado
Plug 'Yggdroot/indentLine'
--"Plug para usar Git en vim
Plug 'tpope/vim-fugitive'
--"comentariovim
Plug 'tpope/vim-commentary'
--Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
-- " Coc Plug de auto completado
Plug ( 'neoclide/coc.nvim', {branch= 'release'} )
--
Plug 'sheerun/vim-polyglot'

vim.call('plug#end')

function VerificandoCoc()

local st= vim.fn.exists(':CocInfo')

if st == 2 then
    vim.cmd('so ~/AppData/Local/nvim/Config/coc-config.vim') --Ajustes para Coc
    print('Todo Ok')
else
    print('Ejecuta :PlugInstall para finalizar la configuracion')
end

end

local cl= vim.cmd('au VimEnter * lua VerificandoCoc()')
-- print(cl)
