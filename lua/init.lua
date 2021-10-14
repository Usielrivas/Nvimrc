
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
vim.o.syntax = 'enable'

--require('plugins')
