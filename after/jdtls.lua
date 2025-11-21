--LSP server enable
---@type vim.lsp.Config
return{
	settings = {
		java ={
			'-data', '~/.local/share/nvim/eclipse-jdtls/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
		}
	}
}


