-- Atajos para buffers
vim.keymap.set("n", "<C-Left>", "<cmd>bprevious<CR>", { desc = "Buffer anterior" })
vim.keymap.set("n", "<C-Right>", "<cmd>bnext<CR>", { desc = "Siguiente buffer" })

-- Atajo para copiar todo el contenido del buffer
vim.keymap.set("n", "<leader>y", function()
	vim.cmd("%y +")
	vim.notify("Yank entire buffer to clipboard", vim.log.levels.INFO)
end, { desc = "Copiar todo el buffer al portapapeles" })
