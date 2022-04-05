local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap=true, silent=true})
vim.g.mapleader = ' '

-- Exit to normal mode
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap=true, silent=true})

-- Saving and exit
vim.api.nvim_set_keymap('n', '<leader>s', ':w<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>sq', ':wq<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>c', ':bdelete<CR>', {noremap=true, silent=true})

-- Explorer
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap=true, silent=true})

-- no hl
vim.api.nvim_set_keymap('n', '<leader>o', ':set hlsearch!<CR>', {noremap=true, silent=true})

-- Split window
vim.api.nvim_set_keymap('n', '<leader>w', ':vsplit<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<leader>hw', ':split<CR>', {silent=true})

-- Better window movements
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent=true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent=true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent=true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent=true})

-- Resizing windows
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', {silent=true})

-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap=true, silent=true})

-- Formatting
vim.api.nvim_set_keymap("n", "<A-f>", ":Format<cr>", opts)

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap=true, silent=true})

-- Move line or block of lines in visual mode
vim.api.nvim_set_keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)

-- Telescope git
vim.api.nvim_set_keymap("n", "<leader>gb", ":Telescope git_branches<cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>gs', ':Telescope git_status<cr>', opts)

-- Gitsigns
vim.api.nvim_set_keymap('n', '<leader>ph', ':Gitsigns preview_hunk <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>pcm', ':Gitsigns blame_line <cr>', opts)

-- terminal
vim.api.nvim_set_keymap('n', '<A-t>', ':tab terminal <cr>', opts)

