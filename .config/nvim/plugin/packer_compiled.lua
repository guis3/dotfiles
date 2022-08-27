-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/gui/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/gui/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/gui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/gui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n5\0\0\4\1\2\0\b-\0\0\0006\1\0\0009\1\1\1-\3\0\0\21\3\3\0B\1\2\0028\0\1\0L\0\2\0\2�\vrandom\tmath�\1\0\0\t\0\14\0\0266\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0006\1\3\0009\1\4\1'\3\5\0B\1\2\0026\2\0\0009\2\6\2B\2\1\2'\3\a\0009\4\b\2'\5\t\0009\6\n\2'\a\t\0009\b\v\2&\3\b\3\18\4\1\0'\5\f\0\18\6\0\0'\a\r\0\18\b\3\0&\4\b\4L\4\2\0\r plugins\f    \npatch\nminor\6.\nmajor\r    v\fversion!  %d-%m-%Y    %H:%M:%S\tdate\aos\19packer_plugins\rtbl_keys\bvim�\17\1\0\f\0006\0n6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0026\4\5\0009\4\6\4B\4\1\0A\2\0\0015\2\a\0003\3\b\0003\4\t\0005\5\n\0004\6\v\0005\a\v\0005\b\f\0=\b\r\a>\a\1\0069\a\14\1'\t\15\0'\n\16\0'\v\17\0B\a\4\2>\a\2\0069\a\14\1'\t\18\0'\n\19\0'\v\20\0B\a\4\2>\a\3\0069\a\14\1'\t\21\0'\n\22\0'\v\23\0B\a\4\2>\a\4\0069\a\14\1'\t\24\0'\n\25\0'\v\26\0B\a\4\2>\a\5\0069\a\14\1'\t\27\0'\n\28\0'\v\29\0B\a\4\2>\a\6\0069\a\14\1'\t\30\0'\n\31\0'\v \0B\a\4\2>\a\a\0069\a\14\1'\t!\0'\n\"\0'\v#\0B\a\4\2>\a\b\0069\a\14\1'\t$\0'\n%\0'\v&\0B\a\4\2>\a\t\0065\a'\0>\a\n\0069\a(\0019\a)\a=\5*\a9\a(\0019\a)\a9\a\r\a'\b,\0=\b+\a9\a(\0019\a-\a=\6*\a9\a(\0019\a-\a9\a\r\a)\b\1\0=\b.\a9\a(\0019\a/\a\18\b\4\0B\b\1\2=\b*\a9\a(\0019\a/\a9\a\r\a'\b0\0=\b+\a9\a1\0009\t\r\1B\a\2\0016\a2\0009\a3\a'\t4\0B\a\2\0016\a2\0009\a3\a'\t5\0B\a\2\0012\0\0�K\0\1\0_ autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=1 3 autocmd FileType alpha setlocal nofoldenable \bcmd\bvim\nsetup\fComment\vfooter\fspacing\fbuttons\16Conditional\ahl\bval\vheader\fsection\1\0\2\bval\3\0\ttype\fpadding\f:qa<CR>\19  Quit NVIM\6q\24<cmd>PackerSync<CR>\24  Update plugins\6u)<cmd>:e ~/.config/nvim/init.lua <CR>\23  Configuration\6c\30<cmd>:BookmarkShowAll<CR>\19  Bookmarks\6m\23<cmd>:NERDTree<CR>\18  NerdTree\6n\17:History<CR>\31  Recently opened files\6h\r:FZF<CR>\19  Find file\6f\18<cmd>ene <CR>\18  New file\6e\vbutton\topts\1\0\2\ahl\vString\rposition\vcenter\1\0\2\bval\16Quick Links\ttype\ttext\1\v\0\0~  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ �\1  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ �\1 ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ �\1 ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  �\1 ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ p ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ d ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ V    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    J          ░    ░  ░    ░ ░        ░   ░         ░    <                                 ░                   \0\0\1\5\0\0\vString\15Identifier\fKeyword\vNumber\ttime\aos\15randomseed\tmath\27alpha.themes.dashboard\nalpha\frequire\0" },
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  catppuccin = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["fterm.nvim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/fterm.nvim",
    url = "https://github.com/numtostr/fterm.nvim"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/suda.vim",
    url = "https://github.com/lambdalisue/suda.vim"
  },
  ["sxhkd-vim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/sxhkd-vim",
    url = "https://github.com/kovetskiy/sxhkd-vim"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://github.com/mattesgroeger/vim-bookmarks"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vim-lastplace",
    url = "https://github.com/farmergreg/vim-lastplace"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight",
    url = "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimcompletesme = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vimcompletesme",
    url = "https://github.com/ackyshake/vimcompletesme"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\4\1\2\0\b-\0\0\0006\1\0\0009\1\1\1-\3\0\0\21\3\3\0B\1\2\0028\0\1\0L\0\2\0\2�\vrandom\tmath�\1\0\0\t\0\14\0\0266\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0006\1\3\0009\1\4\1'\3\5\0B\1\2\0026\2\0\0009\2\6\2B\2\1\2'\3\a\0009\4\b\2'\5\t\0009\6\n\2'\a\t\0009\b\v\2&\3\b\3\18\4\1\0'\5\f\0\18\6\0\0'\a\r\0\18\b\3\0&\4\b\4L\4\2\0\r plugins\f    \npatch\nminor\6.\nmajor\r    v\fversion!  %d-%m-%Y    %H:%M:%S\tdate\aos\19packer_plugins\rtbl_keys\bvim�\17\1\0\f\0006\0n6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0026\4\5\0009\4\6\4B\4\1\0A\2\0\0015\2\a\0003\3\b\0003\4\t\0005\5\n\0004\6\v\0005\a\v\0005\b\f\0=\b\r\a>\a\1\0069\a\14\1'\t\15\0'\n\16\0'\v\17\0B\a\4\2>\a\2\0069\a\14\1'\t\18\0'\n\19\0'\v\20\0B\a\4\2>\a\3\0069\a\14\1'\t\21\0'\n\22\0'\v\23\0B\a\4\2>\a\4\0069\a\14\1'\t\24\0'\n\25\0'\v\26\0B\a\4\2>\a\5\0069\a\14\1'\t\27\0'\n\28\0'\v\29\0B\a\4\2>\a\6\0069\a\14\1'\t\30\0'\n\31\0'\v \0B\a\4\2>\a\a\0069\a\14\1'\t!\0'\n\"\0'\v#\0B\a\4\2>\a\b\0069\a\14\1'\t$\0'\n%\0'\v&\0B\a\4\2>\a\t\0065\a'\0>\a\n\0069\a(\0019\a)\a=\5*\a9\a(\0019\a)\a9\a\r\a'\b,\0=\b+\a9\a(\0019\a-\a=\6*\a9\a(\0019\a-\a9\a\r\a)\b\1\0=\b.\a9\a(\0019\a/\a\18\b\4\0B\b\1\2=\b*\a9\a(\0019\a/\a9\a\r\a'\b0\0=\b+\a9\a1\0009\t\r\1B\a\2\0016\a2\0009\a3\a'\t4\0B\a\2\0016\a2\0009\a3\a'\t5\0B\a\2\0012\0\0�K\0\1\0_ autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=1 3 autocmd FileType alpha setlocal nofoldenable \bcmd\bvim\nsetup\fComment\vfooter\fspacing\fbuttons\16Conditional\ahl\bval\vheader\fsection\1\0\2\bval\3\0\ttype\fpadding\f:qa<CR>\19  Quit NVIM\6q\24<cmd>PackerSync<CR>\24  Update plugins\6u)<cmd>:e ~/.config/nvim/init.lua <CR>\23  Configuration\6c\30<cmd>:BookmarkShowAll<CR>\19  Bookmarks\6m\23<cmd>:NERDTree<CR>\18  NerdTree\6n\17:History<CR>\31  Recently opened files\6h\r:FZF<CR>\19  Find file\6f\18<cmd>ene <CR>\18  New file\6e\vbutton\topts\1\0\2\ahl\vString\rposition\vcenter\1\0\2\bval\16Quick Links\ttype\ttext\1\v\0\0~  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ �\1  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ �\1 ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ �\1 ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  �\1 ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ p ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ d ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ V    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    J          ░    ░  ░    ░ ░        ░   ░         ░    <                                 ░                   \0\0\1\5\0\0\vString\15Identifier\fKeyword\vNumber\ttime\aos\15randomseed\tmath\27alpha.themes.dashboard\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
