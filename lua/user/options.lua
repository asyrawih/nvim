local vim = vim                                 -- :help options
vim.opt.backup = false                          -- creates a backup file
vim.opt.re = 0
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.autoindent = true
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                   -- set relative numbered lines
vim.opt.numberwidth = 2                         -- set number column width to 2 {default 4}
vim.opt.signcolumn =
"yes"                                           -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = true                             -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
-- vim.opt.foldmethod = "indent"                   -- fold by indentation

vim.opt.expandtab = true
vim.opt.shortmess:append "c"
vim.opt.guifont = "FiraCode Nerd Font:h13:b"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

-- Delete Something Without Copy
-- vim.keymap.set({'n', 'x'}, 'x', '"_x')
-- vim.keymap.set({'n', 'x'}, 'd', '"_d')

-- Check Buffer
local group = vim.api.nvim_create_augroup("change_php_indent", { clear = true })

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  pattern = '*.php',
  callback = function()
    vim.api.nvim_command("setlocal shiftwidth=4")
    vim.api.nvim_command("setlocal tabstop=4")
    vim.api.nvim_command("setlocal cmdheight=4")
    vim.api.nvim_command("setlocal numberwidth=4")
  end,
  group = group
})

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  pattern = '*.go',
  callback = function()
    vim.api.nvim_command("setlocal shiftwidth=4")
    vim.api.nvim_command("setlocal tabstop=4")
    vim.api.nvim_command("setlocal cmdheight=4")
    vim.api.nvim_command("setlocal numberwidth=4")
  end,
  group = group
})


local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require('go.format').goimport()
  end,
  group = format_sync_grp,
})

vim.api.nvim_buf_set_option(0, "commentstring", "{/* %s */}")
vim.cmd("autocmd FileType go nmap <leader>fm :GoFmt <cr>")
