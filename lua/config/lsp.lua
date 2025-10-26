local keymap = vim.keymap

-- Add keybindings to on LSP attach
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Set options
		local opts = {buffer = ev.buf, silent = true, remap = false}

		-- Definition
		opts.desc = "Show LSP definition"
		keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

		-- Hover
		opts.desc = "Hover"
		keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

		-- go to workspace symbol
		opts.desc = "Workspace symbol"
		keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)

		-- open diagnostic 
		opts.desc = "Open Diagnostic"
		keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

		-- move to diagnostic next
		opts.desc = "goto next diagnostic"
		keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)

		-- move to previous
		opts.desc = "goto previous diagnostic"
		keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end,opts )

		-- Quick fix
		opts.desc = "open code actions"
		vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)

		-- Open references
		opts.desc = "open references"
		vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)

		-- rename
		opts.desc = "rename function"
		vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts )

		-- signature help
		opts.desc = "signature help"
		vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	end
})

-- get diagnostic severity
local severity = vim.diagnostic.severity

-- set signs 
local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }

-- set signs
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
