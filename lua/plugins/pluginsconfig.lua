local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- ============plugin list==============
local plugins = {

-- ############美化插件##################

  "edluffy/specs.nvim",          -- 动态指针
  "folke/tokyonight.nvim",       -- 主题
  {
    'nvim-lualine/lualine.nvim', -- 状态栏
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  "numToStr/Comment.nvim",       -- gcc和gc注释
  "windwp/nvim-autopairs",       -- 自动补全括号
  "akinsho/bufferline.nvim",     -- buffer分割线
  "lewis6991/gitsigns.nvim",     -- 左则git提示
  "petertriho/nvim-scrollbar",   -- 右侧代码滚动条
  "luukvbaal/statuscol.nvim",    -- 左侧代码zhedie
  "dnlhc/glance.nvim",           -- vscode类似定义代码预览
  {'akinsho/toggleterm.nvim', version = "*", config = true},  --命令行 
  "xiyaowong/transparent.nvim",  -- 透明效果
  {
  'nvimdev/dashboard-nvim',      -- dashboard
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  "karb94/neoscroll.nvim",       -- 平滑滚动
  "norcalli/nvim-colorizer.lua", -- 显示颜色
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }, -- 显示括号范围



-- #######################功能插件#########################

-- ======================DAP===============================
  {
    "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
  },
  {
    "theHamsta/nvim-dap-virtual-text", opts = {},
  },


-- =====================neotree 文件树=====================
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },


-- =========================语法高亮========================
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-context",
    "HiPhish/nvim-ts-rainbow2",


-- =================vscode 代码提示=========================
  {
		"onsails/lspkind.nvim",
		  event = { "VimEnter" },
	},


-- =======================自动补全==========================
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp",  -- lsp auto-completion
			"hrsh7th/cmp-buffer",    -- buffer auto-completion
			"hrsh7th/cmp-path",      -- path auto-completion
			"hrsh7th/cmp-cmdline",   -- cmdline auto-completion
		},
		config = function()
			require("plugins.nvim-cmp")
		end,
	},
  "saadparwaiz1/cmp_luasnip",


-- ====================Code snippet engine===================
	{
		"L3MON4D3/LuaSnip",
		  version = "v2.*",
      dependencies = {"rafamadriz/friendly-snippets",},
	},


-- ====================LSP manager===========================
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",


--===============telescope 文件检索==========================
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { {'nvim-lua/plenary.nvim'} }
  },


-- =============lazy 文件管理插件============================
  {
    "mikavilpas/yazi.nvim",
      dependencies = {
      "nvim-lua/plenary.nvim",
      },
      event = "VeryLazy",
  },


-- ===============函数列表===================================
  "simrat39/symbols-outline.nvim",



-- ================noice 提示================================
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },



-- =====================git==================================
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}


local opts = {}
require("lazy").setup(plugins, opts)
