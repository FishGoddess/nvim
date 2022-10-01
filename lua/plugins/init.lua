local packer = require("packer")

packer.startup({
  function(use)
    use 'wbthomason/packer.nvim' -- Packer 插件管理
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
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
