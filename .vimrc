
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
" let g:NERDTreeWinSize=22

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
