-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Sync clipboard between OS and Neovim.
-- Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- clear search highlighting on pressing <Esc> in normal mode.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Save
vim.cmd('nmap <leader>w :w<cr>')

-- skip folds in vim motion
vim.cmd('nmap j gj')
vim.cmd('nmap k gk')

-- Add zz to center the lines after searching
-- Move to the next occurrence of the search string and center
local opts = {}

vim.keymap.set("n", "n", "nzz", opts)

-- Move to the prev occurrence of the search string and center
vim.keymap.set("n", "N", "Nzz", opts)

-- Move to the next occurrence of the word under the custor and center
vim.keymap.set("n", "*", "*zz", opts)

-- Move to the prev occurrence of the search string and center
vim.keymap.set("n", "#", "#zz", opts)

vim.keymap.set("n", "g*", "g*zz", opts)
vim.keymap.set("n", "g#", "g#zz", opts)


-- Indent lines left right and still stay in visual mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- prevent the replaced word from going into register when pasting over a word
vim.keymap.set("x", "p", [["_dP]])

-- Undo with U
vim.keymap.set('n', 'U', '<C-r>')

-- Move to the start and end of line char easily
vim.keymap.set({"n", "o", "x"}, "<s-h>", "^", opts)
vim.keymap.set({"n", "o", "x"}, "<s-l>", "g_", opts)
