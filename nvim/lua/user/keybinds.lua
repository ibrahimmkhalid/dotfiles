local vim = vim
local Keymap = Keymap
Keymap("", "<Space>", "<Nop>", "")

--[[ Keymap("n", "<C-h>", "<C-w>h", "Focus left window") ]]
--[[ Keymap("n", "<C-j>", "<C-w>j", "Focus bottom window") ]]
--[[ Keymap("n", "<C-k>", "<C-w>k", "Focus upper window") ]]
--[[ Keymap("n", "<C-l>", "<C-w>l", "Focus right window") ]]

-- redo
Keymap("n", "<S-u>", ":redo<CR>", "redo")

-- Resize with arrows
Keymap("n", "<C-Up>", ":resize +2<CR>", "Increase window horizontally")
Keymap("n", "<C-Down>", ":resize -2<CR>", "Decrease window horizontally")
Keymap("n", "<C-Left>", ":vertical resize -2<CR>", "Increase window verticaly")
Keymap("n", "<C-Right>", ":vertical resize +2<CR>", "Decrease window verticaly")

-- fast scrolling
Keymap("n", "<C-U>", "<C-U>zz", "Scroll up")
Keymap("n", "<C-D>", "<C-D>zz", "Scroll down")
Keymap("n", "n", "nzzzv", "Next highlight")
Keymap("n", "N", "Nzzzv", "Previous highlight")

-- saving files and exiting nvim
Keymap("n", "<leader>w", ":w<CR>", "save")
Keymap("n", "<leader>q", ":q<CR>", "quit window")
Keymap("n", "<leader>Q", ":qa<CR>", "quit all windows")


Keymap("n", "<leader>v", ":vsplit<CR>", "Vertical split")
Keymap("n", "<leader>V", ":split<CR>", "Horizontal split")

Keymap("n", "<leader>h", ":nohlsearch<CR>", "hide search")
Keymap("n", "<", "<<", "de-indent")
Keymap("n", ">", ">>", "indent")

-- WSL workaround for visual block mode
Keymap("n", "<M-v>", "<C-v>", "enter visual block mode")

-- Visual --
-- Stay in indent mode
Keymap("v", "<", "<gv", "de-indent")
Keymap("v", ">", ">gv", "indent")

-- Move text up and down
Keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", "move selected text down")
Keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", "move selected text up")
Keymap("v", "p", '"_dP', "visual paste")

Keymap("n", "<leader>y", '"+y', "Copy to system clipboard")
Keymap("n", "<leader>Y", '"+Y', "Copy line to system clipboard")
Keymap("n", "<leader>p", '"+p', "Paste from system clipboard")
Keymap("n", "<leader>P", '"+P', "Paste line from system clipboard")

-- Visual Block --
-- Move text up and down
Keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", "move selected text down")
Keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", "move selected text up")

-- Terminal --
-- Better terminal navigation
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true, desc = "Focus left window" })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true, desc = "Focus bottom window" })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true, desc = "Focus upper window" })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true, desc = "Focus right window" })
vim.api.nvim_set_keymap("n", "<S-K>", "", {silent = true, noremap = true,}) -- removing bad habit
vim.api.nvim_set_keymap("n", "<S-J>", "", {silent = true, noremap = true,})
