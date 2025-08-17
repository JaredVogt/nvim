return {
  "navarasu/onedark.nvim",
  config = function()
    require('onedark').setup {
        style = 'deep',
        transparent = true
    }
    require('onedark').load()
    
    -- set todo/fixme colors
    vim.api.nvim_set_hl(0, "Todo", {
      fg = "blue",
      bg = "red",
      bold = true
    })
  end
}
