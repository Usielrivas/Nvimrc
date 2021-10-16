
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/AppData/Local/nvim/plug_vim')

-- Los plugins van aquí
-- ....
-- "Cierra comillas y llaves automaticamnete
Plug 'Raimondi/delimitMate'
--" Tema ayu Personalizado
Plug 'Usielrivas/ayu-vim'
--" Coc Plug de auto completado
Plug ( 'neoclide/coc.nvim', {branch= 'release'} )
--"plug para Indentado y no perder las buenas practicas de estructurado
Plug 'Yggdroot/indentLine'
--"Optimiza vim para archivos grandes
Plug 'vim-scripts/LargeFile'
--"Plug para usar Git en vim
Plug 'tpope/vim-fugitive'
--"comentariovim
Plug 'tpope/vim-commentary'
--"surround
Plug 'tpope/vim-surround'

Plug ( 'junegunn/fzf', { [ 'do' ]= function()
vim.fn['fzf#install']()
end
})

Plug 'junegunn/fzf.vim'

vim.call('plug#end')

-- print('it is okay')
