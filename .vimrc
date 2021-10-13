 "Ajustes Basico
set number 
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber "Desabilita el salto de linea automatico, en lineas con larga longitud"
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set laststatus=2
set noshowmode

" Plug Vim
call plug#begin('~/AppData/Local/nvim/plug_vim')

"Cierra comillas y llaves automaticamnete
Plug 'Raimondi/delimitMate'
" Tema ayu Personalizado
Plug 'Usielrivas/ayu-vim'
" Coc Plug de auto completado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Gestor de archivo
Plug 'scrooloose/nerdtree'
"Plug para personalizar linea de estado
Plug 'vim-airline/vim-airline'
"Plug de temas para linea de estado nesario para conservar el estilo
Plug 'vim-airline/vim-airline-themes'
"plug para Indentado y no perder las buenas practicas de estructurado
Plug 'Yggdroot/indentLine'
"Optimiza vim para archivos grandes
Plug 'vim-scripts/LargeFile'
"Plug para usar Git en vim
Plug 'tpope/vim-fugitive'
"Permite visualizar el Git status en nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug Easymotion
Plug 'easymotion/vim-easymotion'
"comentariovim
Plug 'tpope/vim-commentary'
"surround
Plug 'tpope/vim-surround'

call plug#end()

"Fin Plug vim

"Atajos personalizados

"Asigna leader a espacio
let mapleader=" "
"nt + leader open nerdtree
nmap <Leader>nt :NERDTreeFind<CR>
"Cambio de pestaña/buffer
nmap <Leader>z :bn<CR>
"Cierra buffer
nmap <Leader>x :bd<CR>
"Agranda y encoge pestaña
nmap <Leader>- <c-w><
nmap <Leader>+ <c-w>>
"Guardar
nmap <Leader>w :w<CR>
"cerrar
nmap q :qa <CR>

"Ajustes para theme Ayu
set termguicolors
let ayucolor="dark"
colorscheme ayu

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

"Ajustes para airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline_theme= 'ayu_mirage'  "Tema para barra de estado

"Ajustes para plug de Indentado
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
let g:indentLine_defaultGroup = 'SpecialKey'

"Ajuste para git status en nerdtree/ simbolos de estado
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'M',
                \ 'Staged'    :'S',
                \ 'Untracked' :'#',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'X',
                \ 'Dirty'     :'*',
                \ 'Ignored'   :'!',
                \ 'Clean'     :'C',
                \ 'Unknown'   :'?',
                \ }

"Ancho de nerdtree
let g:NERDTreeWinSize=22

"Automatiza la instalacion de plug para Coc
let g:coc_global_extensions = [
      \'coc-css',
      \'coc-html',
      \'coc-emmet',
      \'coc-html-css-support',
      \'coc-tsserver'
      \]

"Enlaces

function! VerificandoCoc()
"La funcion permite verificar la instalacion de coc para evitar que nvim
"muestre errores en una nueva instalacion
if exists(':CocInfo')
    so ~/AppData/Local/nvim/Config/coc-config.vim "Ajustes para coc
else
    echo 'Ejecuta :PlugInstall para finalizar la configuracion'
endif

endfunction

au VimEnter * call VerificandoCoc()


"Solucion de errores
"
"Esto corrige el bug de contro + z que freeza nvim en windows
if has('win32')
    nmap <C-z> <Nop>
endif
