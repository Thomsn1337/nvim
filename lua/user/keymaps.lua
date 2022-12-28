local opts = {noremap = true, silent = true}

local key = vim.api.nvim_set_keymap

key("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
key("n", "<C-h>", "<C-w>h", opts)
key("n", "<C-j>", "<C-w>j", opts)
key("n", "<C-k>", "<C-w>k", opts)
key("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
key("n", "<C-Up>", ":resize -2<CR>", opts)
key("n", "<C-Down>", ":resize +2<CR>", opts)
key("n", "<C-Left>", ":vertical resize -2<CR>", opts)
key("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
key("n", "<S-l>", ":bnext<CR>", opts)
key("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to exit insert mode 
key("i", "jk", "<ESC>", opts)
key("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
key("v", "<", "<gv", opts)
key("v", ">", ">gv", opts)

-- Move text up and down
key("v", "<A-j>", ":m .+1<CR>==", opts)
key("v", "<A-k>", ":m .-2<CR>==", opts)
key("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
key("x", "J", ":move '>+1<CR>gv-gv", opts)
key("x", "K", ":move '<-2<CR>gv-gv", opts)
key("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
key("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
