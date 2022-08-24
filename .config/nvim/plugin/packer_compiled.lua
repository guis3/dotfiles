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
    config = { "\27LJ\2\nö\b\0\0\t\0*\1P6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\t\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\4\0039\4\b\1'\6\21\0'\a\22\0'\b\23\0B\4\4\2>\4\5\0039\4\b\1'\6\24\0'\a\25\0'\b\26\0B\4\4\2>\4\6\0039\4\b\1'\6\27\0'\a\28\0'\b\29\0B\4\4\2>\4\a\0039\4\b\1'\6\30\0'\a\31\0'\b \0B\4\4\0?\4\0\0=\3\5\0026\2!\0009\2\"\2'\4#\0B\2\2\2\18\5\2\0009\3$\2'\6%\0B\3\3\2\18\6\2\0009\4&\2B\4\2\0019\4\3\0019\4'\4=\3\5\0049\4(\0009\6)\1B\4\2\1K\0\1\0\topts\nsetup\vfooter\nclose\a*a\tread\ffortune\npopen\aio\f:qa<CR>\19ï™™  Quit NVIM\6q\24<cmd>PackerSync<CR>\24ï„¹  Update plugins\6u)<cmd>:e ~/.config/nvim/init.lua <CR>\23î˜•  Configuration\6c\30<cmd>:BookmarkShowAll<CR>\19ï‘¡  Bookmarks\6m\23<cmd>:NERDTree<CR>\18î—¿  NerdTree\6n\17:History<CR>\31ï•®  Recently opened files\6h\r:FZF<CR>\19ï¡ˆ  Find file\6f\18<cmd>ene <CR>\18ï…›  New file\6e\vbutton\fbuttons\1\t\0\0004     )            )             (        *     4  ( /(         ( /(             )\\ )   (  `    4  )\\())  (     )\\())   (   (   (()/(   )\\))(   4 ((_)\\   )\\   ((_)\\    )\\  )\\   /(_)) ((_)()\\  4  _((_) ((_)    ((_)  ((_)((_) (_))   (_()((_) 4 | \\| | | __|  / _ \\  \\ \\ / /  |_ _|  |  \\/  | 4 | .` | | _|  | (_) |  \\ V /    | |   | |\\/| | 4 |_|\\_| |___|  \\___/    \\_/    |___|  |_|  |_| \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\17€€À™\4\0" },
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
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/limelight.vim",
    url = "https://github.com/junegunn/limelight.vim"
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
  ["vim-rainbow"] = {
    loaded = true,
    path = "/home/gui/.local/share/nvim/site/pack/packer/start/vim-rainbow",
    url = "https://github.com/frazrepo/vim-rainbow"
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
try_loadstring("\27LJ\2\nö\b\0\0\t\0*\1P6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\t\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\4\0039\4\b\1'\6\21\0'\a\22\0'\b\23\0B\4\4\2>\4\5\0039\4\b\1'\6\24\0'\a\25\0'\b\26\0B\4\4\2>\4\6\0039\4\b\1'\6\27\0'\a\28\0'\b\29\0B\4\4\2>\4\a\0039\4\b\1'\6\30\0'\a\31\0'\b \0B\4\4\0?\4\0\0=\3\5\0026\2!\0009\2\"\2'\4#\0B\2\2\2\18\5\2\0009\3$\2'\6%\0B\3\3\2\18\6\2\0009\4&\2B\4\2\0019\4\3\0019\4'\4=\3\5\0049\4(\0009\6)\1B\4\2\1K\0\1\0\topts\nsetup\vfooter\nclose\a*a\tread\ffortune\npopen\aio\f:qa<CR>\19ï™™  Quit NVIM\6q\24<cmd>PackerSync<CR>\24ï„¹  Update plugins\6u)<cmd>:e ~/.config/nvim/init.lua <CR>\23î˜•  Configuration\6c\30<cmd>:BookmarkShowAll<CR>\19ï‘¡  Bookmarks\6m\23<cmd>:NERDTree<CR>\18î—¿  NerdTree\6n\17:History<CR>\31ï•®  Recently opened files\6h\r:FZF<CR>\19ï¡ˆ  Find file\6f\18<cmd>ene <CR>\18ï…›  New file\6e\vbutton\fbuttons\1\t\0\0004     )            )             (        *     4  ( /(         ( /(             )\\ )   (  `    4  )\\())  (     )\\())   (   (   (()/(   )\\))(   4 ((_)\\   )\\   ((_)\\    )\\  )\\   /(_)) ((_)()\\  4  _((_) ((_)    ((_)  ((_)((_) (_))   (_()((_) 4 | \\| | | __|  / _ \\  \\ \\ / /  |_ _|  |  \\/  | 4 | .` | | _|  | (_) |  \\ V /    | |   | |\\/| | 4 |_|\\_| |___|  \\___/    \\_/    |___|  |_|  |_| \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\17€€À™\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
