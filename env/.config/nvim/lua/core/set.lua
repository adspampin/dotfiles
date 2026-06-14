vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Cleaner UI
vim.opt.fillchars = { eob = " ", vert = "▎", horiz = "▬" }  -- visible separators
vim.opt.laststatus = 3                        -- one global statusline
vim.opt.showmode = false                      -- don't show --INSERT--
vim.opt.cursorline = true                     -- subtle current line highlight
vim.opt.splitright = true                     -- open vertical splits to the right
vim.opt.splitbelow = true                     -- open horizontal splits below
