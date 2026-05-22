return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    -- Atajo para abrir el menú de Harpoon
    {
      "<leader>hm",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon: Menú",
    },
    -- Atajo para añadir un archivo a la lista
    {
      "<leader>ha",
      function()
        local harpoon = require("harpoon")
        harpoon:list():add()
      end,
      desc = "Harpoon: Añadir archivo",
    },
    -- Navegación rápida
    { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "Harpoon: Ir al archivo 1" },
    { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "Harpoon: Ir al archivo 2" },
    { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "Harpoon: Ir al archivo 3" },
    { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "Harpoon: Ir al archivo 4" },
  },
}
