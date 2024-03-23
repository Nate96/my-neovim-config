print("Welcome", '\n', '\n')

print("        / <     >\\")
print("       / /      \\ \\")
print("      ( (_______) )")
print("       |         |")
print("       |  _   _  |")
print("       | / \\ / \\ |")
print("       : \\_/ \\_/ ;")
print("        \\_______/")
print("(~~~~~~~~/ /  \\~~~~~~~~~)")
print("|~~~~~~~|/  /\\ |~~~~~~~~|")
print("|~~~~~~~|  /\\ \\|~~~~~~~~|")
print("//      |//  \\ |       \\\\")
print("---------||-||-----------")
print("||]      v   v        [||")
print("||                     || ", '\n', '\n')

-- TODO: implement .env

vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.expandtab = true

vim.smartindent = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3

vim.opt.termguicolors = true

vim.opt.scrolloff = 99
vim.opt.isfname:append('@-@')
vim.opt.updatetime = 50
vim.opt.colorcolumn = '80'

-- HotKey Changes
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

-- Remap for navigating windows
vim.keymap.set('n', '<leader>ws', '<C-w>s') -- split vertically
vim.keymap.set('n', '<leader>wv', '<C-w>v') -- split horizontally
vim.keymap.set('n', '<leader>wq', '<C-w>q') -- quit window
vim.keymap.set('n', '<leader>wh', '<C-w>h') -- move left
vim.keymap.set('n', '<leader>wj', '<C-w>j') -- move down
vim.keymap.set('n', '<leader>wk', '<C-w>k') -- move up
vim.keymap.set('n', '<leader>wl', '<C-w>l') -- move right

-- Remap for resizing windows
vim.keymap.set('n', '<leader>w,', '10<C-w><') -- Decrease pane width by 10
vim.keymap.set('n', '<leader>w.', '10<C-w>>') -- Increase pane width by 10
vim.keymap.set('n', '<leader>w+', '5<C-w>+')  -- Increase pane hight by 5
vim.keymap.set('n', '<leader>w_', '5<C-w>-')  -- Decrease pane hight by 5

-- windows block mode
vim.keymap.set('n', '<leader>v', '<C-v>')

-- Toggling Spell Checker
vim.api.nvim_set_keymap('n', '<leader>s', ':set spell!<CR>', { noremap = true, silent = true })

-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
