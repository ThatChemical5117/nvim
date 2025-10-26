return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {"lua_ls", "clangd", "jdtls", "markdown_oxide" },
			automatic_enable = {
				exclude = {
					"jdtls"
				}
			}
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				config = function()
					require("mason").setup()
				end
			},
			{
				"neovim/nvim-lspconfig"
			}
		}
	},
	{
		"mfussenegger/nvim-jdtls"
	}
}
