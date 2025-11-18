return {
	{
		'hrsh7th/nvim-cmp',
		dependencies= {
			'saadparwaiz1/cmp_luasnip',
			{
				'L3MON4D3/LuaSnip',
				version = "v2.*",
				build = "make install_jsregexp"
			},
			'rafamadriz/friendly-snippets',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-nvim-lsp-signature-help'
		},
		event = "LspAttach",
		config=function()
			local cmp = require('cmp')
			local luasnip = require('luasnip')
			local cmp_select = { behavior = cmp.SelectBehavior.Select }

			require('luasnip.loaders.from_vscode').lazy_load()

			cmp.setup({
				sources = {
					{ name = "luasnip",},
					{ name = "nvim_lsp"},
					{ name = "buffer"},
					{ name = "path" },
					{ name = "nvim_lsp_signature_help" }
				},
				mapping = cmp.mapping.preset.insert({
					['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
					['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),

					-- Only select when user wants to 
					['<CR>'] = cmp.mapping({ i = function(fallback)
						if cmp.visible() and cmp.get_active_entry() then
							cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
						else
							fallback()
						end
					end, s = cmp.mapping.confirm({ select = true }), c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }), }),

					-- Super tab mappings
					['<Tab>'] = cmp.mapping(function(fallback)
						if luasnip.locally_jumpable(1) then
							luasnip.jump(1)
						else
							fallback()
						end
					end, { "i", "s" }),
					['<S-Tab'] = cmp.mapping(function(fallback)
						if luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" })
				}),
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end
				},
			})
		end
	}

}
