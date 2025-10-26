return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim"
		},

		opts = {
			close_if_last_window = false,
			enable_diagnostics = true,
			enable_git_status = true,
			hijack_netrw_behavoir = "open_current"
		}
	}
}
