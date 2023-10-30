local opt = vim.opt




opt.number = true
opt.relativenumber = true


opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autowrite = true

opt.wrap = false


opt.ignorecase = true
opt.smartcase=true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


opt.backspace = "indent,eol,start"


opt.clipboard:append("unnamedplus")


opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-")


opt.swapfile = false
opt.backup = false 
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.colorcolumn = "80"
opt.scrolloff = 8 
opt.updatetime = 50

