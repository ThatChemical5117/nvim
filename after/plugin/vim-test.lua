vim.keymap.set('n', '<leader>rt', ':TestNearest<CR>', { desc = "[R]un [T]est" })
vim.keymap.set('n', '<leader>rT', ':TestFile<CR>', { desc = "[R]un [T]est" })
vim.keymap.set('n', '<leader>a', ':TestSuite<CR>', { desc = "Test Suite" })
vim.keymap.set('n', '<leader>l', ':TestLast<CR>', { desc = "Run last test" })
vim.keymap.set('n', '<leader>g', ':TestVisit<CR>', { desc = "Test visit" })

vim.cmd("let test#strategy = 'vimux'")
