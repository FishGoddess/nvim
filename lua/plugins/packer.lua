local packer = require("packer")

packer.startup({
  function(use)
    -- Packer 插件管理
    use 'wbthomason/packer.nvim'

    -- 主题
    use("sainnhe/edge")
    use("yonlu/omni.vim")
    use("olimorris/onedarkpro.nvim")

    -- nvim-tree
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })

    -- bufferline
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})

    -- lualine
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")

    -- telescope
    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }

    -- dashboard-nvim
    use("glepnir/dashboard-nvim")

    -- treesitter
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  end,

  config = {
    display = {
      open_fn = function()
	return require("packer.util").float({ border = "single" })
      end,
    },
  }
})

-- 每次保存 plugins.lua 自动安装插件
--pcall(
--  vim.cmd,
--  [[
--    augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins/init.lua source <afile> | PackerSync
--    augroup end
--  ]]
--)
