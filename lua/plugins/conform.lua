return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "ruff_organize_imports", "ruff_format" },
		},
		-- Opcional: fuerza a que se use el binario de Ruff en lugar del LSP
		formatters = {
			ruff_format = {
				command = "ruff",
				args = { "format", "--stdin-filename", "$FILENAME", "-" },
				stdin = true,
			},
			ruff_organize_imports = {
				command = "ruff",
				args = { "check", "--select", "I", "--fix", "--stdin-filename", "$FILENAME", "-" },
				stdin = true,
			},
		},
		-- Formatea al guardar (esto ya lo hace LazyVim por defecto, pero lo dejamos explícito)
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "never", -- Evita que el LSP formatee también y genere conflictos
		},
	},
}
