local opt = vim.opt

-- enable mouse mode
opt.mouse = 'a'

-- line numbers
opt.nu = true
opt.relativenumber = true

-- indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- file undo
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- search highlight
opt.hlsearch = false
opt.incsearch = true

-- scroll
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

-- other
opt.wrap = false
opt.termguicolors = true
opt.updatetime = 50
