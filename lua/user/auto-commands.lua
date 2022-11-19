vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})

-- Adds tab-width of 4 automatically on save
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = { '*.lua', '*.ts', '*.js', '*.jsx', '*.tsx', '*.ts', '*.json' },
  -- command = 'setlocal ts=4 sw=4'
  command = 'setlocal smartindent expandtab tabstop=2 shiftwidth=2'
})

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = { '*.jsx', '*.tsx' },
  command = 'syntax sync fromstart'
})

vim.api.nvim_create_autocmd('BufLeave', {
  pattern = { '*.jsx', '*.tsx' },
  command = 'syntax sync clear'
})

vim.cmd([[
  autocmd CursorMoved * set nohlsearch
  nnoremap n n:set hlsearch<cr>
]])
