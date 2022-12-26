-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("marksman", opts)

lvim.lsp.installer.setup.automatic_installation = true

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "eslint_d",
    extra_args = { "%", "--fix", "--cache" },
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  {
    command = "prettier"
  }
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    extra_args = { "%", "--cache" },
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  -- {
  --   command = "solhint",
  --   filetypes = { "solidity" },
  --   args = { "--config", "hardhat.config.ts" },
  --   root_dir = lvim.root_pattern('hardhat.config.*')
  -- }
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    command = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  -- {
  --   command = "solc",
  --   filetypes = { "solidity" },
  --   extra_args = { "--lsp" },
  --   root_dir = lvim.root_pattern('hardhat.config.*')
  -- }
}
