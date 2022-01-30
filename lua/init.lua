
local set= vim.opt
 -- "Ajustes Basico
set.number= true 
set.mouse= 'a'
set.numberwidth= 1
set.clipboard= 'unnamed'
-- syntax enable
set.showcmd= true
set.ruler= true
set.encoding= 'utf-8'
set.showmatch= true
set.sw= 4
set.relativenumber= true --Desabilita el salto de linea automatico, en lineas con larga longitud--
set.tabstop= 4      -- " -The width of a TAB is set to 4.
                  --  " Still it is a \t. It is just that
                   -- " Vim will interpret it to be having
                   -- " a width of 4.

set.shiftwidth= 4   -- " Indents will have a width of 4

set.softtabstop= 4  -- " Sets the number of columns for a TAB

set.expandtab= true      -- " Expand TABs to spaces

set.laststatus= 2
set.showmode= false

-- print('it is ok')

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
--Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
--Plug 'lifepillar/vim-mucomplete'
Plug 'BrandonRoehl/auto-omni'

vim.call('plug#end')

-- "Atajos personalizados

-- "Asigna leader a espacio
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- "Guardar
map('n', '<Leader>w', ':write<CR>', {noremap = true})
-- cerrar
map('n', 'q', ':qa<CR>', {noremap = true})
--- "Cambio de pestaña/buffer
map('n', '<Leader>z', ':bn!<CR>', {noremap = true})
-- -- "Cierra buffer
map('n', '<Leader>x', ':bd<CR>', {noremap = true})
-- -- "Agranda y encoge pestaña
map('n', '<Leader>-', '<c-w><', {noremap = true})
map('n', '<Leader>+', '<c-w>>', {noremap = true})
--" s{char}{char} to move to {char}{char}
map('n', '<Leader>h', '<c-w>h', {noremap = true})
map('n', '<Leader>l', '<c-w>l', {noremap = true})

map('n', '<Leader>nt', ':Lexplore<CR>', {noremap = true})

-- Configuracion de tema ayu

vim.opt.termguicolors= true
vim.cmd [[
    colorscheme dracula
    hi Normal guibg=#1d1f26
 ]]

-- "Ajustes para plug de Indentado
vim.g[ 'indentLine_fileTypeExclude' ] = {'text','sh','help','terminal'} 
vim.g[ 'gindentLine_bufNameExclude' ] = {'NERD_tree','term:.*'}
vim.g[ 'gindentLine_defaultGroup' ] = 'SpecialKey'

vim.g[ 'user_emmet_install_global' ] = 0
vim.cmd [[
    autocmd FileType html,css,javascriptreact,php EmmetInstall
    let g:user_emmet_expandabbr_key='<Tab>'
    imap <expr> <Leader><tab> emmet#expandAbbrIntelligent("\<tab>")

let g:netrw_banner=0
let g:netrw_winsize = 15
let g:netrw_keepdir = 0

]]

-- "Esto corrige el bug de control + z que freeza nvim en windows
if vim.fn.has('win32') == 1 then
    map('n', '<C-z>', '<Nop>', {noremap = true})
end
