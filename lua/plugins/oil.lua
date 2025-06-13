return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = true,
  cmd = "Oil",
  config = function()
    require("oil").setup({
      keymaps = {
        ["<Leader>q"] = {
          desc = "Close Oil buffer without affecting other buffers",
          callback = function()
            -- Ensure we're in an oil buffer
            if vim.bo.filetype == "oil" then
              require("oil").close()
            end
          end
        },
        ["<S-CR>"] = {
          desc = "Open file in new tab and close oil",
          callback = function()
            -- Store current buffer number and window ID
            local oil_bufnr = vim.api.nvim_get_current_buf()
            local oil_winid = vim.api.nvim_get_current_win()
            
            -- Open in new tab
            require("oil").select({ vertical = false, split = "tab" })
            
            -- Switch back to oil window and close it
            vim.api.nvim_set_current_win(oil_winid)
            require("oil").close()
            
            -- Go to the last tab (which should be our newly opened file)
            vim.cmd('tablast')
          end
        }
      },
      -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
      -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
      default_file_explorer = true,
      -- Id is automatically added at the beginning, and name at the end
      -- See :help oil-columns
      columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
      },
      -- Buffer-local options to use for oil buffers
      buf_options = {
        buflisted = false,
        bufhidden = "hide",
      },
      -- Window-local options to use for oil buffers
      win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "nvic",
      },
      -- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
      delete_to_trash = false,
      -- Skip the confirmation popup for simple operations (:help oil.skip_confirm_for_simple_edits)
      skip_confirm_for_simple_edits = false,
      -- Selecting a new/moved/renamed file or directory will prompt you to save changes first
      -- (:help prompt_save_on_select_new_entry)
      prompt_save_on_select_new_entry = true,
      -- Oil will automatically delete hidden buffers after this delay
      -- You can set the delay to false to disable cleanup entirely
      -- Note that the cleanup process only starts when none of the oil buffers are currently displayed
      cleanup_delay_ms = 2000,
      -- LSP file operations configuration
      lsp_file_methods = {
        -- Enable or disable LSP file operations
        enabled = true,
        -- Time to wait for LSP file operations to complete before skipping
        timeout_ms = 1000,
        -- Set to true to autosave buffers that are updated with LSP willRenameFiles
        -- Set to "unmodified" to only save unmodified buffers
        autosave_changes = false,
      },
      -- Constrain the cursor to the editable parts of the oil buffer
      -- Set to `false` to disable, or "name" to keep it on the file names
      constrain_cursor = "editable",
      -- Set to true to watch the filesystem for changes and reload oil
      watch_for_changes = false,
      -- Set to false to disable all default keymaps
      use_default_keymaps = true,
      -- View options for customizing how oil displays files
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
        -- Sort file names with numbers in a more intuitive order for humans.
        -- Can be "fast", true, or false. "fast" will turn it off for large directories.
        natural_order = "fast",
        -- Sort file and directory names case insensitive
        case_insensitive = false,
        -- Sort configuration
        sort = {
          -- sort order can be "asc" or "desc"
          -- see :help oil-columns to see which columns are sortable
          { "type", "asc" },
          { "name", "asc" },
        },
      },
      -- Configuration for the floating window in oil.open_float
      float = {
        -- Padding around the floating window
        padding = 2,
        max_width = 0,
        max_height = 0,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
        -- preview_split: Split direction: "auto", "left", "right", "above", "below".
        preview_split = "auto",
      },
      -- Configuration for the file preview window
      preview_win = {
        -- Whether the preview window is automatically updated when the cursor is moved
        update_on_cursor_moved = true,
        -- How to open the preview window "load"|"scratch"|"fast_scratch"
        preview_method = "fast_scratch",
      },
      -- Configuration for the floating action confirmation window
      confirmation = {
        -- Width dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
        -- min_width and max_width can be a single value or a list of mixed integer/float types.
        -- max_width = {100, 0.8} means "the lesser of 100 columns or 80% of total"
        max_width = 0.9,
        -- min_width = {40, 0.4} means "the greater of 40 columns or 40% of total"
        min_width = { 40, 0.4 },
        -- Height dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
        -- max_height = {80, 0.9} means "the lesser of 80 columns or 90% of total"
        max_height = 0.9,
        -- min_height = {5, 0.1} means "the greater of 5 columns or 10% of total"
        min_height = { 5, 0.1 },
        border = "rounded",
        win_options = {
          winblend = 0,
        },
      },
    })
  end,
}
