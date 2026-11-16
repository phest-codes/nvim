-- ~/.config/nvim/lua/plugins/formatting.lua
return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    -- Añade ruff_format a los formateadores de Python, sin borrar los que ya tenga LazyVim
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.python = { "ruff_format" }
    -- Mantén tu formateador XML
    opts.formatters_by_ft.xml = { "xmlformatter" }
  end,
}
