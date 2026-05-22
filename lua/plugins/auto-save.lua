return {
  "okuuva/auto-save.nvim",
  config = function()
    require('auto-save').setup({
      enabled = true,
      trigger_events = {
        -- Todos los eventos ahora tienen un retraso
        defer_save = { "BufLeave", "FocusLost", "QuitPre", "InsertLeave" },
        
        -- Deja la tabla de immediate_save vacía
        immediate_save = { },
      },
      
      -- Puedes personalizar el retraso si lo deseas (el valor por defecto es 135 ms)
      debounce_delay = 500,
    })
  end,
}
