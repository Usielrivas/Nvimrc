
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
--"Gestor de archivo
Plug 'scrooloose/nerdtree'
--"Plug para personalizar linea de estado
Plug 'vim-airline/vim-airline'
--"Plug de temas para linea de estado nesario para conservar el estilo
Plug 'vim-airline/vim-airline-themes'
--"plug para Indentado y no perder las buenas practicas de estructurado
Plug 'Yggdroot/indentLine'
--"Optimiza vim para archivos grandes
Plug 'vim-scripts/LargeFile'
--"Plug para usar Git en vim
Plug 'tpope/vim-fugitive'
--"Permite visualizar el Git status en nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
--"Plug Easymotion
Plug 'easymotion/vim-easymotion'
--"comentariovim
Plug 'tpope/vim-commentary'
--"surround
Plug 'tpope/vim-surround'


vim.call('plug#end')

-- print('it is ok')
