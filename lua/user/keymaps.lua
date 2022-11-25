M = {}
lvim.leader = "space"

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
keymap('', 'f', function()
  hop.hint_char1({ current_line_only = true })
end, { remap = true })
keymap('', 'F', function()
  hop.hint_lines({})
end, { remap = true })
keymap('', 't', function()
  hop.hint_char2({ direction = directions.AFTER_CURSOR })
end, { remap = true })
keymap('', 'T', function()
  hop.hint_char2({ direction = directions.BEFORE_CURSOR })
end, { remap = true })

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<C-Up>", "<C-b>", opts)
keymap("n", "<C-Down>", "<C-f>", opts)

return M
