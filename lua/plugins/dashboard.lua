local ok, db = pcall(require, "dashboard")
if not ok then
  vim.notify("没有找到 dashboard 模块")
  return
end

db.custom_footer = {
  "",
  "",
  "https://www.fishgoddess.cn",
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Edit keybindings                    ",
    action = "edit ~/.config/nvim/lua/key_bindings.lua",
  },
  {
    icon = "  ",
    desc = "Edit Projects                       ",
    action = "edit ~/.local/share/nvim/project_nvim/project_history",
  },
  -- {
  --   icon = "  ",
  --   desc = "Edit .bashrc                        ",
  --   action = "edit ~/.bashrc",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Change colorscheme                  ",
  --   action = "ChangeColorScheme",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Edit init.lua                       ",
  --   action = "edit ~/.config/nvim/init.lua",
  -- },
  {
     icon = "  ",
     desc = "Find file                           ",
     action = "Telescope find_files",
  },
  -- {
  --   icon = "  ",
  --   desc = "Find text                           ",
  --   action = "Telescopecope live_grep",
  -- },
}


db.custom_header = {
  [[]],
  [[███████╗██╗███████╗██╗  ██╗ ██████╗  ██████╗ ██████╗ ██████╗ ███████╗███████╗███████╗]],
  [[██╔════╝██║██╔════╝██║  ██║██╔════╝ ██╔═══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝]],
  [[█████╗  ██║███████╗███████║██║  ███╗██║   ██║██║  ██║██║  ██║█████╗  ███████╗███████╗]],
  [[██╔══╝  ██║╚════██║██╔══██║██║   ██║██║   ██║██║  ██║██║  ██║██╔══╝  ╚════██║╚════██║]],
  [[██║     ██║███████║██║  ██║╚██████╔╝╚██████╔╝██████╔╝██████╔╝███████╗███████║███████║]],
  [[╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝╚══════╝]],
  [[]],
}
