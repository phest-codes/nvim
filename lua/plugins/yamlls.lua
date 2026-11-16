return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			yamlls = {
				settings = {
					yaml = {
						-- 1. Le decimos que acepte las etiquetas de CloudFormation
						customTags = {
							"!And",
							"!If",
							"!Not",
							"!Equals",
							"!Or",
							"!FindInMap sequence",
							"!Base64",
							"!Cidr",
							"!Ref",
							"!Ref Scalar",
							"!Sub",
							"!GetAtt",
							"!GetAZs",
							"!ImportValue",
							"!Select",
							"!Split",
							"!Join sequence",
						},
						-- 2. Desactivamos la validación de esquema para este tipo de archivos
						-- (evita los errores de "Incorrect type" y "Map keys must be unique")
						validate = false,
					},
				},
			},
		},
	},
}
