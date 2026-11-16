return {
	"sudo-tee/opencode.nvim",
	config = function()
		require("opencode").setup({
			-- Aquí puedes personalizar opciones si lo deseas.
			-- Por defecto, el plugin usará el binario `opencode` del PATH.
		})
	end,
	dependencies = {
		-- Dependencias recomendadas para una mejor experiencia
		"nvim-lua/plenary.nvim",
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				anti_conceal = { enabled = false },
				file_types = { "markdown", "opencode_output" },
			},
			ft = { "markdown", "opencode_output" },
		},
		-- Opcional: para autocompletado y selectores de archivos (elige uno)
		"saghen/blink.cmp", -- o "hrsh7th/nvim-cmp"
		"folke/snacks.nvim", -- o "nvim-telescope/telescope.nvim"
	},
}
