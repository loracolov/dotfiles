-- Set leader key
vim.g.mapleader = " "

-- Open netrw
-- vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

-- Open Telescope file browser
vim.keymap.set("n", "<leader>f", ":Telescope file_browser<Return>")

-- Open Lazy.nvim
vim.keymap.set("n", "<leader>l", vim.cmd.Lazy)

-- Buffer management
vim.keymap.set("n", "L", vim.cmd.bnext)
vim.keymap.set("n", "H", vim.cmd.bprev)
vim.keymap.set("n", "<leader>q", vim.cmd.bd)

-- Replace all
vim.keymap.set("n", "S", ":%s//g<Left><Left>")

-- Spellcheck, z= to get list of options on hover
vim.keymap.set("n", "<leader>o", ":setlocal spell!<Return>", { silent = true })
-- Fix spelling on the fly in insert mode. Will pick the first spelling recommendation.
-- [https://castel.dev/post/lecture-notes-1/#correcting-spelling-mistakes-on-the-fly]
vim.keymap.set("i", "<C-o>", "<c-g>u<Esc>[s1z=`]a<c-g>u")

-- Move lines
vim.keymap.set("n", "˚", ":m .-2<Return>==", { silent = true })
vim.keymap.set("n", "∆", ":m .+1<Return>==", { silent = true })
vim.keymap.set("i", "∆", "<Esc>:m .+1<Return>==gi", { silent = true })
vim.keymap.set("i", "˚", "<Esc>:m .-2<Return>==gi", { silent = true })
vim.keymap.set("v", "∆", ":m '>+1<Return>gv=gv", { silent = true })
vim.keymap.set("v", "˚", ":m '<-2<Return>gv=gv", { silent = true })

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Undotree
vim.keymap.set('n', '<leader>h', vim.cmd.UndotreeToggle)

-- Move windows
vim.keymap.set("", "sh", "<C-w>h")
vim.keymap.set("", "sk", "<C-w>k")
vim.keymap.set("", "sj", "<C-w>j")
vim.keymap.set("", "sl", "<C-w>l")

-- Split windows
-- vim.keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
-- vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })




