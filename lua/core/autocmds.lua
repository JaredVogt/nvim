-- auto save buffers whenever neovim loses focus 
vim.api.nvim_create_autocmd(
  "FocusLost",
  { command = [[silent! wa]] }
)

-- Auto save buffers whenever buffer loses focus
vim.api.nvim_create_autocmd(
  "BufHidden",
  { command = [[silent! wa]] }
)
