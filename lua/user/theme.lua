local theme = {
  -- 'NLKNguyen/papercolor-theme',
  -- config = function()
  --   lvim.builtin.lualine.options.theme = 'PaperColor'
  --   vim.cmd [[:set background=dark]]

  -- end

  'EdenEast/nightfox.nvim',
  config = function()
    -- bold
    -- underline
    -- undercurl	curly underline
    -- underdouble	double underline
    -- underdotted	dotted underline
    -- underdashed	dashed underline
    -- strikethrough
    -- reverse
    -- inverse		same as reverse
    -- italic
    -- standout
    -- nocombine	override attributes instead of combining them
    -- NONE		no attributes used (used to reset it)

    require('nightfox').setup({
      options = {
        transparent = true,
        terminal_colors = true,
        dim_inactive = true,
        module_default = true,
        styles = {
          comments = "NONE",
          conditionals = "italic",
          functions = "bold",
          keywords = "italic",
          numbers = "bold",
          operators = "NONE"

        }
      }
    })
  end
}

return theme
