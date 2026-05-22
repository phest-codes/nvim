return {
  "folke/persistence.nvim",
  event = "BufReadPre", -- Carga el plugin antes de que se lea un buffer
  opts = {
    -- Opciones para lo que se debe guardar en la sesión
    options = { "buffers", "curdir", "tabpages", "winsize", "help" }
  },
  -- Atajos de teclado para gestionar las sesiones
  keys = {
    { "<leader>ss", "<cmd>lua require('persistence').save()<cr>", desc = "Guardar sesión" },
    { "<leader>sl", "<cmd>lua require('persistence').load()<cr>", desc = "Cargar sesión" },
    { "<leader>sd", "<cmd>lua require('persistence').stop()<cr>", desc = "Borrar sesión" },
  },
}
