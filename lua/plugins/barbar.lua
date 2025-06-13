return {
  'romgrk/barbar.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  event = 'VimEnter',
  config = function()
    require('barbar').setup({
      animation = false,
      tabpages = false,
      -- More comprehensive exclude list
      exclude_ft = {
        'qf',           -- Quickfix list
        'help',         -- Help pages
        'terminal',     -- Terminal windows
        'prompt',       -- Prompt windows
        'popup',        -- Popup windows
        'cmdwin',       -- Command-line window
        '[dap-repl]',   -- Debug REPL
      },
      -- Exclude by buffer name patterns
      exclude_name = {
        'Command Line',
        '!',            -- Bang command window
        '/.',           -- Search
      },
      icons = {
        buffer_index = false,
        button = '',
        filetype = { enabled = false },
        separator = {left = '', right = ''},
        separator_at_end = true,
        modified = {button = ''},
        pinned = {button = ''},
        inactive = {button = ''},
        visible = { button = '' },
      },
      maximum_padding = 1,
      minimum_padding = 1,
      hide = {
        extensions = false,
        inactive = false,
      },
      maximum_length = 20,
      semantic_letters = true,
    })

    -- Base colors
    local colors = {
      bg = "#ffffff",
      bg_current = "#d0d0d0",
      fg = "#000080",
      fg_inactive = "#555555",
      pick = "#ff0000"
    }

    local highlight_groups = {
      BufferTabpageFill = { bg = colors.bg },
      BufferCurrent = { bg = colors.bg_current, fg = colors.fg, bold = true },
      BufferCurrentIndex = { bg = colors.bg_current, fg = colors.fg },
      BufferCurrentMod = { bg = colors.bg_current, fg = colors.fg, bold = true },
      BufferCurrentSign = { fg = colors.bg, bg = colors.bg_current },
      BufferCurrentTarget = { bg = colors.bg_current, fg = colors.pick, bold = true },
      BufferInactive = { bg = colors.bg, fg = colors.fg_inactive },
      BufferInactiveIndex = { bg = colors.bg, fg = colors.fg_inactive },
      BufferInactiveMod = { bg = colors.bg, fg = colors.fg_inactive },
      BufferInactiveSign = { fg = colors.bg, bg = colors.bg },
      BufferInactiveTarget = { bg = colors.bg, fg = colors.pick, bold = true },
      BufferVisible = { bg = colors.bg, fg = colors.fg },
      BufferVisibleIndex = { bg = colors.bg, fg = colors.fg },
      BufferVisibleMod = { bg = colors.bg, fg = colors.fg },
      BufferVisibleSign = { fg = colors.bg, bg = colors.bg },
      BufferVisibleTarget = { bg = colors.bg, fg = colors.pick, bold = true },
      BufferPick = { bg = colors.bg, fg = colors.pick, bold = true },
      BufferPickMod = { bg = colors.bg, fg = colors.pick, bold = true },
      BufferPickSign = { bg = colors.bg },
      BufferCurrentPick = { bg = colors.bg_current, fg = colors.pick, bold = true },
      BufferAlternate = { bg = colors.bg, fg = colors.fg },
      BufferAlternateSign = { fg = colors.bg, bg = colors.bg },
    }

    for group, settings in pairs(highlight_groups) do
      vim.api.nvim_set_hl(0, group, settings)
    end

    -- Set up autocmd to ensure cmdwin doesn't get captured
    vim.api.nvim_create_autocmd('CmdwinEnter', {
      callback = function()
        vim.opt_local.buflisted = false
      end,
    })
  end,
  init = function() 
    vim.g.barbar_auto_setup = false
  end,
  keys = {
    { "<leader>9", "<cmd>BufferPick<cr>", desc = "Pick buffer in barbar" },
  },
}
