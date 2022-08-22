-- Config was built using the following config:
-- https://github.com/numToStr/dotfiles/tree/master/neovim/.config/nvim/
local g   = vim.g
local o   = vim.o
local opt = vim.opt
local A   = vim.api

-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')

o.termguicolors = true
-- o.background = 'dark'

-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 7

-- Better editor UI
o.number = true
o.numberwidth = 1
o.relativenumber = true
o.signcolumn = 'yes'
o.cursorline = true

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.showmatch = 0
o.list = true

-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Suppress read-only warning
vim.cmd[[au BufEnter * set noro]]

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1

opt.mouse = "a"

-- load impatient plugin 
require('impatient').enable_profile()

-- Highlight the region on yank
A.nvim_create_autocmd('TextYankPost', {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual', timeout = 120 })
    end,
})


-- COLORSCHEMES
g.catppuccin_flavour = "mocha"
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]


-----------------
-- KEYBINDINGS
-----------------
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Map <leader> to space
g.mapleader = " "
g.maplocalleader= " "

-- Mimic shell movements
map('i', '<C-E>', '<ESC>A')
map('i', '<C-A>', '<ESC>I')

--------------
-- COMMANDS --
--------------
-- SudaWrite
A.nvim_create_user_command('W', 'SudaWrite', {bang = true, desc = ':SudaWrite'})

-------------
-- PLUGINS --
-------------
return require('packer').startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- File management --
  use 'scrooloose/nerdtree'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'

  -- Productivity --
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'ackyshake/vimcompletesme'
  use 'junegunn/fzf.vim'
  use 'junegunn/limelight.vim'
  use 'lewis6991/impatient.nvim'
  use 'jiangmiao/auto-pairs'
  use 'mattesgroeger/vim-bookmarks'
  use 'farmergreg/vim-lastplace'
  use 'lambdalisue/suda.vim'

  -- Syntax Highlighting and Colors --
  use 'kovetskiy/sxhkd-vim'
  use 'ap/vim-css-color'
  use 'frazrepo/vim-rainbow'

  -- Colorschemes
  use {"catppuccin/nvim", as = "catppuccin" }

  -- Alpha dashboard
use {
    "goolord/alpha-nvim",
    config = function ()
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        dashboard.section.header.val = {
          [[     )            )             (        *     ]],
          [[  ( /(         ( /(             )\ )   (  `    ]],
          [[  )\())  (     )\())   (   (   (()/(   )\))(   ]],
          [[ ((_)\   )\   ((_)\    )\  )\   /(_)) ((_)()\  ]],
          [[  _((_) ((_)    ((_)  ((_)((_) (_))   (_()((_) ]],
          [[ | \| | | __|  / _ \  \ \ / /  |_ _|  |  \/  | ]],
          [[ | .` | | _|  | (_) |  \ V /    | |   | |\/| | ]],
          [[ |_|\_| |___|  \___/    \_/    |___|  |_|  |_| ]],
        }
        -- dashboard.section.header.val = {
        --   [[                               __                ]],
        --   [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        --   [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        --   [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        --   [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        --   [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
        --   [[]],
        -- }
        dashboard.section.buttons.val = {
          dashboard.button("e", "  New file", "<cmd>ene <CR>"),
          dashboard.button("f", "  Find file", ":FZF<CR>"),
          dashboard.button("h", "  Recently opened files", ":History<CR>"),
          dashboard.button("n", "  NerdTree", "<cmd>:NERDTree<CR>"),
          dashboard.button("m", "  Bookmarks", "<cmd>:BookmarkShowAll<CR>"),
          dashboard.button("c", "  Configuration", "<cmd>:e ~/.config/nvim/init.lua <CR>"),
          dashboard.button("u", "  Update plugins", "<cmd>PackerSync<CR>"),
          dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
        }

        local handle = io.popen('fortune')
        local fortune = handle:read("*a")
        handle:close()
        dashboard.section.footer.val = fortune
        alpha.setup(dashboard.opts)
    end
}

-- Plugin options
-- fzf
A.nvim_set_var('fzf_preview_window', {'right:hidden', 'ctrl-/'})

-- vim-bookmarks
A.nvim_set_var('bookmark_sign', '留')
-- A.nvim_set_var('bookmark_sign', '')
A.nvim_set_var('bookmark_annotation_sign', '留')
A.nvim_set_var('bookmark_display_annotation', '1')
A.nvim_set_var('bookmark_auto_close', '1')
vim.cmd([[highlight BookmarkAnnotationSign ctermbg=NONE guifg=#F9E2AF]])
vim.cmd([[highlight BookmarkSign ctermbg=NONE guifg=#F38BA8]])


-- Lualine config
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'palenight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    extensions = {'nerdtree'}
  }
}

end)

