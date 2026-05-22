return {
  -- Configuración principal de LazyVim
  {
    "LazyVim/LazyVim",
    -- Opciones para el tema de colores
    opts = {
      colorscheme = "rose-pine",
    },
  },
  

  -- Al principio del archivo, antes del último `}`
{
  "odoo/odoo-neovim",
  build = ":Lazy build odoo-neovim", -- descarga automática del binario odoo-lsp
  config = function()
    require("odoo-neovim").setup()
  end,
}

  -- Importa extras de LazyVim para un entorno de desarrollo completo
  -- Estos extras añaden soporte para lenguajes, linters, formateadores y depuración.
    { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },
  { import = "lazyvim.plugins.extras.dap.core" },
  { import = "lazyvim.plugins.extras.lang.xml" },

  -- Extras adicionales para proyectos de NestJS y backend
  -- Estos extras son útiles para manejar la configuración y las pruebas
  { import = "lazyvim.plugins.extras.lang.json" }, -- Para archivos como package.json y tsconfig.json
  { import = "lazyvim.plugins.extras.lang.yaml" }, -- Para configuración de Docker, CI/CD, etc.
  { import = "lazyvim.plugins.extras.test.core" }, -- Para ejecutar pruebas (ej. con Jest) directamente en Neovim

  -- Configuración de nvim-lspconfig para añadir servidores de lenguaje
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Define los servidores de lenguaje que se deben activar
      servers = {
        tsserver = {},   -- Servidor de lenguaje para TypeScript
        jsonls = {},     -- Servidor de lenguaje para JSON
        yamlls = {},     -- Servidor de lenguaje para YAML
      },
    },
  },
}
