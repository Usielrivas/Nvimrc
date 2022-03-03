-- Configuracion de tema ayu

vim.opt.termguicolors = true
vim.cmd [[
    colorscheme dracula
    hi Normal guibg=#1d1f26
 ]]

-- "Ajustes para plug de Indentado
vim.g["indentLine_fileTypeExclude"] = {"text", "sh", "help", "terminal"}
vim.g["gindentLine_bufNameExclude"] = {"NERD_tree", "term:.*"}
vim.g["gindentLine_defaultGroup"] = "SpecialKey"

vim.g["user_emmet_install_global"] = 0
vim.cmd [[
    autocmd FileType html,css,javascriptreact,typescriptreact,php,vue,svelte EmmetInstall
    let g:user_emmet_expandabbr_key='<Tab>'

let g:netrw_banner=0
let g:netrw_winsize = 15
let g:netrw_keepdir = 0
let g:NERDTreeWinSize=28
filetype plugin on
set omnifunc=syntaxcomplete#Complete

lua require('formatter').setup(...)
" Provided by setup function
nnoremap <silent> <leader>f :Format<CR>

set completeopt=menu,menuone,noselect
]]
