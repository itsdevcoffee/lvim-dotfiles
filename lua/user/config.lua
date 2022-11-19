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
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
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
