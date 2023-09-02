vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Scroll the viewport faster
vim.keymap.set("n", "<C-e>", "5<C-e>")
vim.keymap.set("n", "<C-y>", "5<C-y>")

-- Turn off search highlight
vim.keymap.set("n", "<space><space>", ":nohlsearch<CR>")

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')

-- User commands
local augroup = vim.api.nvim_create_augroup('user_cmds', {clear = true})

-- Highlight the text we copy using y
vim.api.nvim_create_autocmd('TextYankPost', {
  group = augroup,
  desc = 'Highlight on yank',
  callback = function(event)
    vim.highlight.on_yank()
  end,
  pattern = '*',
})
