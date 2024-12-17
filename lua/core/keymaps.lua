-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------
-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local vks = vim.keymap.set  -- for conciseness

-- General keymaps (my preferences)
vks("n", "x", '"_x', { desc = "Delete character without copying to register" })
vks("n", "U", "<C-r>", { desc = "Redo" })
vks("n", "dw", "daw", { desc = "Delete word from anywhere in word" })
vks("n", "yw", "yiw", { desc = "Yank word from anywhere in word" })
vks("n", "<ESC><ESC><ESC>", ":nohl<CR>", { desc = "Clear search highlight" })
vks("n", "j", "gj", { desc = "Move down display line" })
vks("n", "k", "gk", { desc = "Move up display line" })
vks('n', 'cc', 'gcc', { remap = true, desc = "toggle comments (overrides gcc)" }) -- remap so gcc still works
vks('x', 'cc', 'gc', { remap = true, desc = "toggle comments (overrides gc)" })

-- Spelling commands
vks("n", "<leader>s", ":setlocal spell!<cr>", { desc = "Toggle spell check" })
vks("n", "<leader>sn", "]s", { desc = "Next misspelled word" })
vks("n", "<leader>sp", "[s", { desc = "Previous misspelled word" })
vks("n", "<leader>su", "z=", { desc = "Show spelling suggestions" })
vks("n", "<leader>sf", "1z=", { desc = "Use first spelling suggestion" })
vks("n", "<leader>sd", "zg", { desc = "Add word to dictionary" })
vks("n", "<leader>sug", "zug", { desc = "Remove word from dictionary" })

-- Command window with history
vks("n", ":", "q:a", { desc = "Command history" })
vks("n", "/", "q/a", { desc = "Forward search history" })
vks("n", "?", "q?a", { desc = "Backward search history" })

-- Window management
vks("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vks("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vks("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size" })
vks("n", "<leader>sx", ":close<CR>", { desc = "Close current split window" })

-- Tab management
vks("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
vks("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
vks("n", "<leader>9", ":tabn<CR>", { desc = "Next tab" })
vks("n", "<leader>0", ":tabp<CR>", { desc = "Previous tab" })

-- Leader utility actions (my preferences)
vks('n', '<leader>r', '<Plug>ReplaceWithRegisterOperator', { desc = "Replace with register" })
vks('n', '<leader>w', ':w<CR>', { desc = "Save file" })
vks('n', '<leader>q', ':q<CR>', { desc = "Quit" })
vks('n', '<leader>wq', ':wq<CR>', { desc = "Save and quit" })
vks("n", "<leader>b", "g;", { desc = "Jump back to last edit" })
vks('n', '<leader>src', ':so %<CR>', { desc = "Souce current file" })
