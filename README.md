# Nvimrc

<b>*Nota:</b> Archivo .vimrc solo probado en Windows CMD y Neovim 5.0, 6.0

  ## Descripción General

Archivos de configuración para Nvim, inicia a trabajar en nvim con una preconfiguración orientada
al desarrollo front-end. La configuración incluye un tema dark(Dracula) e incluye 
algunos de los plugins más populares como la herramienta de autocompletado [coc](https://github.com/neoclide/coc.nvim).

## Requisitos

- [Nvim](https://github.com/neovim/neovim) v5.0 o superior.
- [Git](https://git-scm.com/) - Control de versiones.
- [Node.js](https://nodejs.org/es/) para el autocompletado con CoC.
- [Vim-Plug](https://github.com/junegunn/vim-plug) Gestor de plugins

## Pasos para aplicar la configuración
### Para Windows 10

Abrir CMD y ubicarse en la siguiente ruta:
```bash
  cd User/{Usuario}/AppData/Local
```
Clonar repositorio:
```bash
  git clone https://github.com/Usielrivas/Nvimrc.git
```
Renombrar la carpeta del repositorio:
```bash
  REN nvimrc nvim
```
Ingresar a la carpeta del repositorio:
```bash
cd nvim
```
Ejecutar nvim y instalar Plugins
```bash
:PlugInstall
```
## Atajos Personalizados

| Atajo | Funcion | 
| :---: | :---: | 
| ```Espacio```| Tecla Leader | 
| ```Leader + w```| Guardar | 
| ```Leader + q```| Cerrar todo | 
| ```Leader + nt```| Abre Nerdtree - Gestor de archivo | 
| ```Leader + z```| Cambia de buffer(Pestaña) | 
| ```Leader + x```| Cierra el buffer(Pestaña) | 
| ```s```| Habilita la entrada de dos caracteres para la navegación con easymotion | 
| ```Leader +```| Agranda la ventana horizontalmente |
| ```Leader -```| Encoge la ventana horizontalmente |

<b>*Nota:</b> Atajos solo para modo normal

## Plugins Incluidos
<b>*Nota:</b> Los plugins no están en este repositorio, se descargan en su instalación de nvim al ejecutar ```:PlugInstall```

| Plugin | Función |
| :---: | :---: | 
| [DelimitMate](https://github.com/Raimondi/delimitMate) | Realiza el cierre automático de llaves y corchetes: (){}””’’ |
| [CoC](https://github.com/neoclide/coc.nvim) | Plugin para el autocompletado, soporta múltiples lenguaje. Es esta configuración esta preconfigurado para el autocompletado de HTML, CSS3 y JS. |
| [nerdtree](https://github.com/preservim/nerdtree)| Gestor de archivo |
| [vim-airline](https://github.com/vim-airline/vim-airline) | Plugin de ajuste para la línea de estado |
| [indentLine](https://github.com/Yggdroot/indentLine) | Este complemento se utiliza para mostrar líneas verticales delgadas en cada nivel de sangría |
| [LargeFile](https://github.com/vim-scripts/LargeFile)| Ayuda a optimizar nvim o vim cuando este trabaja con archivos grandes |}
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Un envoltorio para usar Git desde Vim o Nvim |
| [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) | Un plugin de NERDTree que muestra banderas de estado de git |
| [vim-easymotion](https://github.com/easymotion/vim-easymotion) | Facilita la navegación dentro de documentos y más. |
| [vim-commentary](https://github.com/tpope/vim-commentary) | Facilita la realización de comentarios. Usa ```gcc``` para una linea y ```gc``` múltiples líneas en modo visual |
| [vim-surround](https://github.com/tpope/vim-surround) | Surround.vim tiene que ver con el "entorno": paréntesis, corchetes, comillas, etiquetas XML y más. El complemento proporciona mapas para eliminar, cambiar y agregar fácilmente dichos entornos en pares. |
| [ayu-vim-fork](https://github.com/Usielrivas/ayu-vim) | Un fork del tema ayu-vim Dark |

## Conclusión
<b>Proyección del proyecto a futuro:</b> Pasar la configuracion a lua <br>
Si te ha servido esta configuración, da una estrella a este proyecto.

