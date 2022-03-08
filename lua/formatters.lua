function conf()
return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
          stdin = true
        }
      end


-- Configuracion para prettier, se debe instalar con npm -g
require('formatter').setup({
  filetype = {
    javascript = { conf },
    typescriptreact = { conf },
    javascriptreact = { conf },
    html = { conf },
    css = { conf },
    json = { conf },
    php = { conf },
    vue = { conf },
    svelte = { conf },
    scss = { conf },
   -- lua = { conf },
  }
})

