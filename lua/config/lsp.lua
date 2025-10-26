local keymap = vim.keymap

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = {buffer = ev.buf, silent = true, remap = false}

		opts.desc = "Show LSP definition"
		keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

		opts.desc = "Hover"
		keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

		opts.desc = "Workspace symbol"
		keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)

		opts.desc = "Open Diagnostic"
		keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

		opts.desc = "goto next diagnostic"
		keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)

		opts.desc = "goto previous diagnostic"
		keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end,opts )

		opts.desc = "open code actions"
		vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)

		opts.desc = "open references"
		vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)

		opts.desc = "rename function"
		vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts )

		opts.desc = "signature help"
		vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	end
})

local severity = vim.diagnostic.severity

local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }

vim.diagnostic.config({
	signs = {
		text = {
			[severity.ERROR] = signs.Error,
			[severity.WARN] = signs.Warn,
			[severity.HINT] = signs.Hint,
			[severity.INFO] = signs.Info
		}
	}
})
