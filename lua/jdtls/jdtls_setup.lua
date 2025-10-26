local M = {}

-- Define function setup
function M:setup()
	local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

	local workspace_dir = '/home/ThatChemical/.local/share/nvim/eclipse-jdtls/' .. project_name

	-- config
	local config = {
		cmd = {
			'/usr/lib/jvm/java-21-openjdk/bin/java',

			'-Declipse.application=org.eclipse.jdt.ls.core.id1',
			'-Dosgi.bundles.defaultStartLevel=4',
			'-Declipse.product=org.eclipse.jdt.ls.core.product',
			'-Dlog.protocol=true',
			'-Dlog.level=ALL',
			'-Xmx1g',
			'--add-modules=ALL-SYSTEM',
			'--add-opens', 'java.base/java.util=ALL-UNNAMED',
			'--add-opens', 'java.base/java.lang=ALL-UNNAMED',

			'-jar', '/home/ThatChemical/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.7.0.v20250519-0528.jar',
			'-configuration', '/home/ThatChemical/.local/share/nvim/mason/packages/jdtls/config_linux',
			'-data', workspace_dir
		},

		root_dir = vim.fs.root(0, {".git", "mvnw", "gradlew"}),
		settings = {
			java ={}
		}

	}

	-- Start 
	require("jdtls").start_or_attach(config)
end


return M
