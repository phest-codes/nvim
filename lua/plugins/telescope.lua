return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4", -- Versión estable
    -- Opciones por defecto para vimgrep (ripgrep)
    opts = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob=!node_modules/**", -- Ignora el directorio node_modules
          "--glob=!.git/", -- Ignora el directorio .git
        },
      },
    },
    -- Dependencias del plugin
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      { "nvim-telescope/telescope-ui-select.nvim" }, -- Plugin para una interfaz de usuario más intuitiva
    },
    -- Función de configuración
    config = function(_, opts)
      -- Configura Telescope con las opciones definidas arriba
      require("telescope").setup(opts)
      -- Carga la extensión de la interfaz de usuario
      require("telescope").load_extension("ui-select")
    end,
  },
}
