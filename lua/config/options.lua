-- Deshabilita los archivos de intercambio (swapfiles)
-- Esto mejora el rendimiento de I/O y es seguro si usas autoguardado o una sesión de persistencia
vim.opt.swapfile = false

-- Desactiva los números de línea relativos
-- Esto es una preferencia personal, puedes cambiarlo si lo prefieres
vim.opt.relativenumber = false

-- vim.opt.wrap = true
vim.g.fd_binary_name = "fdfind"

vim.g.autoformat = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
