-- "Atajos personalizados

-- "Asigna leader a espacio
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- "Guardar
map('n', '<Leader>w', ':write<CR>', {noremap = true})
--Abre nerdtree gestor de archivo
map('n', '<Leader>nt', ':NERDTreeToggle<CR>', {noremap = true})
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
map('n', 't', '<c-w>', {noremap = true})

