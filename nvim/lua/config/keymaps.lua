-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Do not yank with "X"
keymap.set("n", "x", '"_x')

-- Delete backwards word
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Delete word under cursor in insert mode without yank
keymap.set("i", "<C-z>", '<C-o>"_de')

-- Create newline before / behind current text
keymap.set("i", "<C-l>", "<C-o>O") -- Before
keymap.set("i", "<C-;>", "<C-o>o") -- Behind

-- Move line up or down
keymap.set("n", "<C-k>", ":move +1 \n")
keymap.set("n", "<C-i>", ":move -2 \n")

-- Lspsaga custom keymap
local opts = { noremap = true, silent = true }
keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap.set("n", "gl", "<Cmd>Lspsaga show_diagnostic<CR>", opts)
keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
keymap.set("i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap.set("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)

-- Lspsaga code action
local codeaction = require("lspsaga.codeaction")
vim.keymap.set("n", "<leader>ca", function()
  codeaction:code_action()
end, { silent = true })
vim.keymap.set("v", "<leader>ca", function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
  codeaction:range_code_action()
end, { silent = true })
