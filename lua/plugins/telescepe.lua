return {
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
	},

	opts = {
		defaults = {
			hide_stl = true
		},
		extension = {
			['ui-select'] = {
				require('telescope.themes').get_dropdown(),
			}
		}
	},

}


