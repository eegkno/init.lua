vim.opt.fileencoding = "utf-8" 

-- Appearance --

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Display command
vim.opt.showcmd = true  
vim.opt.cursorline = true
vim.opt.colorcolumn = "120"

-- Tab control
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true    -- expand tab to spaces
vim.opt.autoindent = true   -- copy indent from current line when starting new one

-- show matching braces
vim.opt.showmatch = true                                    
vim.opt.smartindent = true

vim.opt.wrap = false

-- Backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Searching
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true    -- if you include mixed case in your search, assumes you want case-sensitive
vim.opt.ignorecase = true

vim.opt.termguicolors = true
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes"  -- show sign column so that text doesn't shift

-- backspace
vim.opt.backspace = "indent,eol,start"  -- allow backspace on indent, end of line or insert mode start position

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
vim.opt.splitright = true   -- split vertical window to the right
vim.opt.splitbelow = true   -- split horizontal window to the bottom

vim.opt.iskeyword:append("-")   -- consider string-string as whole word

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.opt.autoread = true -- reload if file has changed outside vim

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Netrw configs
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
