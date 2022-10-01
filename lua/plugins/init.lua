local packer = require("packer")

packer.startup({
  function(use)
    -- Packer 插件管理
    use 'wbthomason/packer.nvim'
    
    -- 主题
    use("mhartington/oceanic-next")
    use("sainnhe/edge")
    use("yonlu/omni.vim")
    use("olimorris/onedarkpro.nvim")

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
