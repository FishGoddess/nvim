local color_scheme = "onedarkpro"

local ok, err = pcall(vim.cmd, "colorscheme " .. color_scheme)
if not ok then
  vim.notify("color scheme " .. color_scheme .. " 设置出错：" .. err)
  return
end
