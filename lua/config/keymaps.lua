local keymap = vim.keymap
local opts = { silent = true }

-- Set leader key
vim.g.mapleader = " "

-- Open netrw
-- keymap.set("n", "<leader>f", vim.cmd.Ex)

-- Open Telescope file browser
keymap.set("n", ";f", ":Telescope file_browser<Return>", opts)

-- Open Lazy.nvim
keymap.set("n", "<leader>l", vim.cmd.Lazy)

-- Buffer management
keymap.set("n", "L", vim.cmd.bnext)
keymap.set("n", "H", vim.cmd.bprev)
keymap.set("n", "<leader>q", vim.cmd.bd)

-- Replace all
keymap.set("n", "S", ":%s//g<Left><Left>")

-- Spellcheck, z= to get list of options on hover
keymap.set("n", "<leader>o", ":setlocal spell!<Return>", opts)
-- Fix spelling on the fly in insert mode. Will pick the first spelling recommendation.
-- [https://castel.dev/post/lecture-notes-1/#correcting-spelling-mistakes-on-the-fly]
keymap.set("i", "<C-o>", "<c-g>u<Esc>[s1z=`]a<c-g>u")

-- Move lines
keymap.set("n", "˚", ":m .-2<Return>==", opts)
keymap.set("n", "∆", ":m .+1<Return>==", opts)
keymap.set("i", "∆", "<Esc>:m .+1<Return>==gi", opts)
keymap.set("i", "˚", "<Esc>:m .-2<Return>==gi", opts)
keymap.set("v", "∆", ":m '>+1<Return>gv=gv", opts)
keymap.set("v", "˚", ":m '<-2<Return>gv=gv", opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Undotree
keymap.set('n', '<leader>h', vim.cmd.UndotreeToggle)

-- Move windows
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Split windows
-- keymap.set("n", "ss", ":split<Return><C-w>w", opts)
-- keymap.set("n", "sv", ":vsplit<Return><C-w>w", opts)
