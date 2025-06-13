return {
  "gbprod/yanky.nvim",
  config = function()
    require("yanky").setup({})
  end,
  dependencies = {
    "nvim-telescope/telescope.nvim"
  },
  keys = {
    { "<leader>y", ":Telescope yank_history<CR>", desc = "Yank history" },
  }
}
