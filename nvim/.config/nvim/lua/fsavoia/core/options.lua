vim.cmd("let g:netrw_liststyle = 3")
vim.o.colorcolumn = "80"

local opt = vim.opt -- for conciseness

-- spell check
opt.spell = true -- enable spell check
opt.spelllang = "en_us" -- set spell check language to english

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- changing mac option key to meta (use as alt)
vim.g.neovide_input_macos_alt_is_meta = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = true -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = false -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
-- opt.clipboard("unnamed") -- use system clipboard as default register
-- opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = "a"

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Fold settings
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldcolumn = "0"
opt.foldtext = ""
opt.foldlevel = 99

-- # Fold Manipulation Shortcuts in Neovim (and Vim)
--
-- # Individual Fold Manipulation
-- za  → Toggles (open/close) the fold under the cursor.
-- zA  → Recursively toggles all folds at the cursor level.
-- zo  → Opens the fold under the cursor.
-- zO  → Recursively opens all folds at the cursor level.
-- zc  → Closes the fold under the cursor.
-- zC  → Recursively closes all folds at the cursor level.
--
-- # Global Fold Manipulation
-- zR  → Opens all folds in the file.
-- zM  → Closes all folds in the file.
--
-- # Fold Level Manipulation
-- z1  → Closes all folds of level 1 (keeping higher-level folds open).
-- z2, z3, ..., z9  → Closes all folds up to the respective level.
--
-- # Editing Within Folds
-- zx  → Recalculates folds in the file and tries to reopen where necessary.
-- zX  → Closes all folds and recalculates them.
--
-- # Moving Between Folds
-- [z  → Moves to the start of the current/open fold.
-- ]z  → Moves to the end of the current/open fold.
