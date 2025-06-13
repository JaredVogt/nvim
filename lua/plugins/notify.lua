return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      -- Animation style
      stages = "fade_in_slide_out",
      -- Default timeout for notifications
      timeout = 3000,
      -- For stages that change opacity this is treated as the highlight behind the window
      background_colour = "#000000",
    })
    
    -- Set nvim-notify as the default notify function
    vim.notify = require("notify")
  end
}