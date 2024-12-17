return {
  "navarasu/onedark.nvim",
  config = function()
    require('onedark').setup {
        style = 'deep'
    }
    require('onedark').load()
    
    -- Set the background to be transparent
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
    
    -- set todo/fixme colors
    vim.api.nvim_set_hl(0, "Todo", {
      fg = "blue",
      bg = "red",
      bold = true
    })
  end
}
