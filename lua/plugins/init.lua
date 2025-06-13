-- In ~/.config/nvim/lua/plugins.lua
return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
  require("core.colorscheme"), -- setup color scheme
  require("plugins.whichkey"),
  require("plugins.yanky"),
  require("plugins.plenary"),
  require("plugins.hop"),
  require("plugins.oil"),
  require("plugins.mini"),
  require("plugins.statusline"),
  require("plugins.barbar"),
  require("plugins.neoscroll"),
  require("plugins.notify"),
}
