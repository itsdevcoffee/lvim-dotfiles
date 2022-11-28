local theme = require('user.theme')

lvim.plugins = {
  theme,
  {
    'opalmay/vim-smoothie'
  },
  -- {
  --   'karb94/neoscroll.nvim',
  --   config = function()
  --     require('neoscroll').setup({
  --       -- All these keys will be mapped to their corresponding default scrolling animation
  --       mappings = { '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
  --       hide_cursor = true, -- Hide cursor while scrolling
  --       stop_eof = true, -- Stop at <EOF> when scrolling downwards
  --       respect_scrolloff = true, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  --       cursor_scrolls_alone = false, -- The cursor will keep on scrolling even if the window cannot scroll further
  --     })
  --   end
  -- },
  {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }

    end
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      -- require "lsp_signature".on_attach({
      --   bind = true,
      --   handler_opts = {
      --     border = "rounded",
      --   },
      -- })
      require "lsp_signature".setup({
        bind = true,
        handler_opts = {
          border = "rounded"
        }
      })
    end
    ,
    event = "BufRead",
  },
  {
    'mg979/vim-visual-multi',
    branch = 'master',
    config = function()
      vim.cmd([[
        let g:VM_maps = {}
        let g:VM_mouse_mappings = 1
      ]])
    end,
  },
  {
    'tpope/vim-surround',
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require('symbols-outline').setup()
    end
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    "itchyny/vim-cursorword",
    config = function()
      vim.api.nvim_command("augroup user_plugin_cursorword")
      vim.api.nvim_command("autocmd!")
      vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
      vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
      vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
      vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
      vim.api.nvim_command("augroup END")
    end
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup {
        width = 120; -- Width of the floating window
        height = 25; -- Height of the floating window
        default_mappings = true; -- Bind default mappings
        debug = false; -- Print debug information
        opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil; -- A function taking two arguments, a buffer and a window to be ran as a hook.
      }
    end
  },
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup(
        {
          -- render = 'first_column',
          -- render = 'foreground',
          render = 'background',
          enable_named_colors = true,
        })
    end

  },
  {
    'SirVer/ultisnips'
  },
  {
    'mlaursen/vim-react-snippets'
  },
  {
    'styled-components/vim-styled-components',
    branch = 'main',
  },
  { 'hrsh7th/cmp-emoji' },
  { 'j-hui/fidget.nvim' },
  { "ghillb/cybu.nvim" },
  { 'is0n/jaq-nvim' },
  {
    'folke/todo-comments.nvim',
    requires = {
      "nvim-lua/plenary.nvim"
    }
  },
}
