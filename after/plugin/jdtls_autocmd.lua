-- Define an auto command to start the jdtls server when editing a java file
vim.api.nvim_create_autocmd("FileType", {
	pattern = 'java',
	callback = function()
		require("jdtls.jdtls_setup").setup()
	end
})
