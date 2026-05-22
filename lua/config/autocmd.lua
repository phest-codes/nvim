-- Activar autoguardado de sesión al salir de Neovim
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    require("persistence").save()
  end,
})

-- Cargar automáticamente la sesión al iniciar Neovim en un directorio con sesión guardada
-- Solo se activa si Neovim se inicia sin argumentos de archivo
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      require("persistence").load()
    end
  end,
})
