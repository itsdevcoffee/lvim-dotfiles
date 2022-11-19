-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
--

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

-- General Vim Configs
vim.cmd('set number relativenumber')
vim.cmd('set nu rnu')
vim.cmd([[ 
if exists("g:neovide")
  set guifont=FuraCode\ Nerd\ Font:h28
  let g:neovide_transparency = 0.86
  let g:transparency = 0.86
  let g:neovide_background_color = '#004D40'
endif
]])

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()

-- vim.g.multi_cursor_select_all_word_key = "<C-k>"
-- local preview = pcall(require, 'goto-preview')

-- Keybindings START
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

require('illuminate').pause()
-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ current_line_only = true })
end, { remap = true })
vim.keymap.set('', 'F', function()
  hop.hint_lines({})
end, { remap = true })
vim.keymap.set('', 't', function()
  hop.hint_char2({ direction = directions.AFTER_CURSOR })
end, { remap = true })
vim.keymap.set('', 'T', function()
  hop.hint_char2({ direction = directions.BEFORE_CURSOR })
end, { remap = true })

lvim.builtin.which_key.mappings["<Space>"] = { "<cmd>ToggleTerm<CR>", "Toggle Terminal" }

-- lvim.builtin.bufferline.active = true
-- lvim.builtin.bufferline.options.numbers = "none"
-- lvim.builtin.bufferline.options.indicator_icon = nil;


lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons = 1

-- vim.cmd('set termguicolors')
-- vim.cmd('set t_Co=256')

lvim.builtin.lualine.active = true
lvim.builtin.lualine.style = "lvim"
-- lvim.builtin.lualine.options.theme = "neon"
-- local custom_molokai = require('lualine.themes.ayu_dark')
lvim.builtin.lualine.options.theme = 'NeoSolarized'

local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.sections.lualine_a = { "mode" }
-- lvim.builtin.lualine.sections.lualine_c = { "diff" }
lvim.builtin.lualine.sections.lualine_y = {
  components.spaces,
  components.location
}
lvim.transparent_window = true
-- lvim lualine config
-- lvim.builtin.lualine.style = "lvim"

-- local components = require("lvim.core.lualine.components")

-- lvim.builtin.lualine.sections.lualine_a = { "mode" }
-- lvim.builtin.lualine.sections.lualine_c = { "scrollbar" }
-- lvim.builtin.lualine.sections.lualine_y = {
--   components.spaces,
--   components.location
-- }
-- lvim.transparent_window = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "solidity"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = false

lvim.builtin.telescope.defaults.file_ignore_patterns = {
  "%-lock.*",
  "vendor/*",
  "%.lock",
  "__pycache__/*",
  "%.sqlite3",
  "%.ipynb",
  "node_modules/*",
  "%.jpg",
  "%.jpeg",
  "%.png",
  "%.svg",
  "%.otf",
  "%.ttf",
  "%.mp3",
  "%.mp4",
  "%.webm",
  "%.data",
  ".git/",
  "%.webp",
  ".dart_tool/",
  ".github/",
  ".gradle/",
  ".idea/",
  ".settings/",
  ".vscode/",
  "__pycache__/",
  "build/",
  "env/",
  "gradle/",
  "node_modules/",
  "target/",
  "%.pdb",
  "%.dll",
  "%.class",
  "%.exe",
  "%.cache",
  "%.ico",
  "%.pdf",
  "%.dylib",
  "%.jar",
  "%.docx",
  "%.met",
  "smalljre_*/*",
  ".vale/",
  ".eslintcache"
}

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumeko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
lvim.lsp.installer.setup.automatic_installation = true

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })

local opts = {} -- check the lspconfig documentation for a list of all possible options
require("lvim.lsp.manager").setup("marksman", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  -- {
  -- 	command = "prettierd",
  -- 	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "html", "json", "markdown" },
  -- 	extra_args = { "--tab-width", "4", "--print-width", "100", "--use-tabs", "true", "--no-semi", "true",
  -- 		"--single-quote",
  -- 		"true",
  -- 		"--trailing-comma",
  -- 		"all", "--config", "./.prettierrc" },
  -- },
  {
    command = "eslint_d",
    extra_args = { "%", "--fix", "--cache" },
    -- args = { "--config", "server/.eslintrc.cjs" },
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  -- {
  --   command = 'prettier',
  --   filetypes = { "javascriptreact", "javascript", "typescriptreact", "typescript" },
  --   extra_args = { "--stdin" },
  -- extra_args = { "--tab-width", "4", "--print-width", "100", "use-tabs", "true", "--no-semi", "true", "--single-quote",
  --   "true",
  --   "--trailing-comma",
  --   "es5", "--config", "./.prettierrc" },
  -- args = { "--tab-width", "4", "use-tabs", "true", "--no-semi", "true", "--single-quote", "true", "--trailing-comma", "es5", "--config", "./.prettierrc" },
  -- extra_args = { "--stdin", "--stdin-filepath", "$FILENAME", "--config", "./server/.prettierrc" },
  --   to_stdin = true,
  -- },
}

-- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    -- args = { "--config", "server/.eslintrc.cjs" },
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  -- {
  --   command = "solhint",
  --   filetypes = { "solidity" },
  --   args = { "-c", ".solhint.json" }
  -- }
}

-- set code actions
local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    command = "eslint_d",
    -- args = { "--config", "server/.eslintrc.cjs" },
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  }
}
-- TODO: something

-- Load modules
reload "user.icons"
reload "user.config"
reload "user.options"
reload "user.plugins"
reload "user.fidget"
reload "user.jaq"
-- reload "user.todo-comments"
reload "user.cybu"
reload "user.auto-commands"
