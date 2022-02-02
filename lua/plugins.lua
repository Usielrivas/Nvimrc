
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
--Plug 'BrandonRoehl/auto-omni'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-omni'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
--
Plug 'mhartington/formatter.nvim'

vim.call('plug#end')
