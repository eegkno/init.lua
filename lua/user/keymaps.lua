vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Scroll the viewport faster
vim.keymap.set("n", "<C-e>", "5<C-e>")
vim.keymap.set("n", "<C-y>", "5<C-y>")

-- Turn off search highlight
vim.keymap.set("n", "<space>h", ":nohlsearch<CR>")

-- Saves current buffer
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')

-- Delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- Buffers
vim.keymap.set('n', '<leader>bd', ':bdelete<cr>')
vim.keymap.set('n', '<leader>bp', ':bprevious<cr>')
vim.keymap.set('n', '<leader>bn', ':bnext<cr>')
vim.keymap.set('n', '<leader>bl', ':buffers<cr>')

-- User commands
local augroup = vim.api.nvim_create_augroup('user_cmds', {clear = true})

-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

