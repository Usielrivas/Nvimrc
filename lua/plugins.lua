
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
--Plug 'lifepillar/vim-mucomplete'
--Plug 'BrandonRoehl/auto-omni'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
--
Plug 'mhartington/formatter.nvim'
--
Plug 'sheerun/vim-polyglot'

vim.call('plug#end')


