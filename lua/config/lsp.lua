-- Enable lsp
vim.lsp.enable("lua_ls");
vim.lsp.enable("clangd");

vim.lsp.config("jdtls", {
	root_dir = vim.fs.root(0, {
		'mvnw',
		'gradlew',
		'settings.gradle',
		'settings.gradle.kts',
		'build.xml',
		'pom.xml',
		'build.gradle',
		'.git'
	}),
	settings = {
		java ={
			'-data', '~/.local/share/nvim/eclipse-jdtls/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
		}
	}
})

vim.lsp.enable("jdtls")

