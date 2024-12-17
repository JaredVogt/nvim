-- In ~/.config/nvim/lua/plugins/hop.lua
return {
  "smoka7/hop.nvim",
  version = "*",
  opts = {
    keys = 'etovxqpdygfblzhckisuran',
    jump_on_sole_occurrence = true,
  },
  config = function(_, opts)
    local hop = require('hop')
    hop.setup(opts)
    
    -- Hop keymaps
    vim.keymap.set('n', 'f', function()
      hop.hint_char2()
    end, { desc = "Hop to 2 characters" })

    vim.keymap.set('n', '<leader>hw', function()
      hop.hint_words()
    end, { desc = "Hop words" })
    
    vim.keymap.set('n', '<leader>hl', function()
      hop.hint_lines()
    end, { desc = "Hop lines" })
    
    vim.keymap.set('n', '<leader>hc', function()
      hop.hint_char1()
    end, { desc = "Hop to character" })
    
    vim.keymap.set('n', '<leader>hp', function()
      hop.hint_patterns()
    end, { desc = "Hop patterns" })
  end,
}
