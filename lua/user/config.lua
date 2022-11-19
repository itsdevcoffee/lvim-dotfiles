-- General
lvim.colorscheme = 'carbonfox'
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Builtins
lvim.builtin.alpha.active = true
lvim.builtin.illuminate.active = false
lvim.builtin.bufferline.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.breadcrumbs.active = true
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.dap.active = true
lvim.builtin.cmp.cmdline.enable = true
lvim.builtin.cmp.window.completion = {
  border = 'rounded',
  winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
}
lvim.builtin.cmp.window.documentation = {
  border = 'rounded',
  winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
}

lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons = 1
lvim.builtin.lualine.active = true
lvim.builtin.lualine.style = "lvim"
lvim.builtin.lualine.options.theme = 'auto'

local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_c = { "diff" }
lvim.builtin.lualine.sections.lualine_y = {
  components.spaces,
  components.location
}
lvim.transparent_window = true

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

local autopairs_ok, autopairs = pcall(require, 'nvim-autopairs')

if autopairs_ok then
  autopairs.setup()
end

-- Commented Out
-- lvim.builtin.bufferline.active = true
-- lvim.builtin.bufferline.options.numbers = "none"
-- lvim.builtin.bufferline.options.indicator_icon = nil;
-- lvim.builtin.cmp.window.completion = {
--   border = "rounded",
--   winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
-- }
-- lvim.builtin.cmp.formatting.source_names = {
--   nvim_lsp = "",
--   emoji = "",
--   path = "",
--   calc = "",
--   cmp_tabnine = "",
--   vsnip = "",
--   luasnip = "",
--   buffer = "",
--   tmux = "",
--   copilot = "",
--   treesitter = "",
-- }
