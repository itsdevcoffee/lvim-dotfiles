-- local lsp = require('lvim.lsp.manager')
-- local capabilities = require('lvim.lsp').common_capabilities()
-- local lspconfig = require 'lvim.lsp.config'

-- LSP
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "solidity", "solc" })

-- local solOpts = {
--   capabilities = capabilities,
--   on_attach = require('lvim.lsp').common_on_attach,
--   on_init = require('lvim.lsp').common_on_init,
--   filetypes = { 'solidity' },
--   command = { 'solidity-ls', '--stdio' },
--   settings = {
--     solidity = {
--       remapping = {
--         ["@openzeppelin/"] = '/home/texmex/dev/fare-smart-contracts/crypto/node_modules/@openzeppelin/'
--       },
--       root_dir = lvim.root_pattern("hardhat-config.ts"),
--     }
--   }
-- }

-- lspconfig.solidity.setup('solidity', solOpts)
