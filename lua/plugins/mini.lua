-- In ~/.config/nvim/lua/plugins/mini.lua
return {
  "echasnovski/mini.nvim",
  verson = "*",
  config = function()
    require('mini.surround').setup({
      -- Optionally change the default keymaps here
      mappings = {
        add = 'gsa',        -- Add surrounding
        delete = 'gsd',     -- Delete surrounding
        find = 'gsf',       -- Find surrounding
        find_left = 'gsF',  -- Find surrounding (to the left)
        highlight = 'gsh',  -- Highlight surrounding
        replace = 'gsr',    -- Replace surrounding
        update_n_lines = 'gsn',
      }
    })
  end
}
