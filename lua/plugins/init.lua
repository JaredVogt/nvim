-- In ~/.config/nvim/lua/plugins.lua
return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
  require("core.colorscheme"), -- setup color scheme
  require("plugins.whichkey"),
  require("plugins.hop"),
  require("plugins.mini"),
}
