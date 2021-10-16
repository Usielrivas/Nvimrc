-- "Atajos personalizados

-- "Asigna leader a espacio
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- "Guardar
map('n', '<Leader>w', ':write<CR>', {noremap = true})
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
map('n', '<Leader>h', '<c-w>h', {noremap = true})
map('n', '<Leader>l', '<c-w>l', {noremap = true})


map('n', 'f', ':FZF<CR>', {noremap = true})

