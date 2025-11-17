return {
	{
		"williamboman/mason-lspconfig.nvim",
		event = "LspAttach",
		opts = {
			ensure_installed = {"lua_ls", "clangd", "jdtls"},
			automatic_enable = {
				exclude = {
					"jdtls"
				}
			}
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {}
			},
			{
				"neovim/nvim-lspconfig"
			},
			{
				"mfussenegger/nvim-jdtls"
			}
		}
	}
}
