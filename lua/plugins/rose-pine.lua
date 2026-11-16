-- ~/.config/nvim/lua/plugins/rose-pine.lua
return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  lazy = false,
  opts = {
    variant = "main", -- "main" (dark) | "moon" | "dawn"
    styles = {
      italic = true,
    },
  },
}
