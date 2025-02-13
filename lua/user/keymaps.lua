local opts = { noremap = true, silent = true }

local term_opts = { silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
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
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Downl", ":resize-2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- Telescope --
keymap("n", "<leader>ff",
    "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({ winbland = 10 }))<cr>", opts)
keymap("n", "<leader>tt", "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({ }))<cr>",
    opts)

vim.api.nvim_set_keymap('n', '<leader>im', [[<cmd>lua require'telescope'.extensions.goimpl.goimpl{}<CR>]],
    { noremap = true, silent = true })


keymap("n", "<leader>df", ":DiffviewOpen<cr>", opts)
keymap("n", "<leader>dc", ":DiffviewClose<cr>", opts)
-- Keymaps --
keymap("n", "<leader><Tab>", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>fm", ":lua vim.lsp.buf.format() <cr>", opts)
keymap("n", "ss", ":noh<cr>", opts)

--- Buffer --
keymap("n", "<S-w>", ":Bdelete<cr>", opts)

--- Golang ---
keymap("n", "<leader>gt", ":GoTestFunc -v -n 1 -F<cr>", opts)

-- Window --
keymap("n", "<leader>vs", ":vsplit<cr>", opts)
keymap("n", "<leader>sh", ":split<cr>", opts)
keymap("n", "<leader>go", ":GoPkgOutline<cr>", opts)
-- Search Box
keymap("x" ,"/", ":SearchBoxIncSearch visual_mode=true <CR>", opts)
keymap("n" ,"/", ":SearchBoxIncSearch<CR>", opts)
-- FineCmdline
keymap('n', '<leader>p', '<cmd>FineCmdline<CR>', { noremap = true })
keymap('x', '<leader>p', "<cmd>FineCmdline '<,'><CR>", { noremap = true })
