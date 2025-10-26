local neotree = require('neo-tree.command')

vim.keymap.set('n','<leader>da', function()
	neotree.execute({toggle = true}) end,
{ desc = "Open Neotree" })

vim.keymap.set('n', '<leader>dw', function()
	neotree.execute({toggle = true, position = 'current'}) 
end,
{ desc = "Open Neotree as full window"})

