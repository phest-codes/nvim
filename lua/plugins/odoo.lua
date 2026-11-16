-- ~/.config/nvim/lua/plugins/odoo.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = { enabled = false },
        ruff = { enabled = false },
      },
    },
    init = function()
      local home = vim.fn.expand("$HOME")
      local server = home .. "/.local/share/nvim/odoo/odoo_ls_server"
      local stdlib = home .. "/.local/share/nvim/odoo/typeshed/stdlib"
      local config = home .. "/ODOO/Odoo16-desarrollo/odools.toml"

      vim.lsp.config("odoo_ls", {
        cmd = {
          server,
          "--config-path", config,
          "--selected-config", "odoo16",
          "--stdlib", stdlib,
          "--log-level", "info",
        },
        filetypes = { "python", "xml" },
        root_markers = { ".git", "odools.toml", "odoo.conf", "odoo-bin" },
      })

      vim.lsp.enable("odoo_ls")
    end,
  },
}
