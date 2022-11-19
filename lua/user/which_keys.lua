local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

vim.cmd("nnoremap gkd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
vim.cmd("nnoremap gkr <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
vim.cmd("nnoremap gki <cmd>lua require('goto-preview').goto_preview_references()<CR>")
vim.cmd("nnoremap gkx <cmd>lua require('goto-preview').close_all_win()<CR>")
vim.cmd("nnoremap gkv <cmd>SymbolsOutline<cr>")

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["F"] = { "<cmd>Telescope live_grep<CR>", "Live search entire project" }
lvim.builtin.which_key.mappings["a"] = { "<cmd>quitall!<CR>", "Exit out of LunarVim" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  L = { "<cmd>Telescope lsp_code_actions<CR>", "Search Code Actions" },
  t = { "<cmd>ToggleTerm<CR>", "Toggle Terminal" },
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
  e = { "<cmd>TroubleToggle<cr>", "Toggle Trouble Panel" },
}

lvim.builtin.which_key.mappings["<Space>"] = { "<cmd>ToggleTerm<CR>", "Toggle Terminal" }
