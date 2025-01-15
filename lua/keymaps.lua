-- Generic vim keymap function / default option
local opts = { noremap = true, silent = true }
local set = vim.keymap.set

-- Telescope ( File search )
local telescope_builtin = require("telescope.builtin")
set("n", "<leader>ff", telescope_builtin.find_files, {})
set("n", "<leader>fg", telescope_builtin.live_grep, {})
set("n", "<leader>fb", telescope_builtin.buffers, {})

-- Autocompletion
set("n", "<leader>ft", ":Alpha<CR>", opts)

-- NvimTree ( File tree exoplorer )
set("n", "<leader>ft", ":NvimTreeFindFileToggle<CR>", opts)

-- Cycle through errors
set("n", "<leader>n", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
set("n", "<leader>p", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)

-- Alpha
set("n", "<leader>a", ":Alpha<CR>", opts)

-- Hide notification
set("n", "<leader>nh", ":NotificationsClear<CR>", opts)

-- Git
set("n", "<leader>tg", ":NvimTreeFindFileToggle<CR>", opts)

-- Git sign
local gitsigns = require("gitsigns")
vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, {})
vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, {})
vim.keymap.set("v", "<leader>hs", function()
	gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, {})
vim.keymap.set("v", "<leader>hr", function()
	gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, {})
vim.keymap.set("n", "<leader>hS", gitsigns.stage_buffer, {})
vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk, {})
vim.keymap.set("n", "<leader>hR", gitsigns.reset_buffer, {})
vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, {})
vim.keymap.set("n", "<leader>hb", function()
	gitsigns.blame_line({ full = true })
end, {})
vim.keymap.set("n", "<leader>tb", gitsigns.toggle_current_line_blame, {})
vim.keymap.set("n", "<leader>hd", gitsigns.diffthis, {})
vim.keymap.set("n", "<leader>hD", function()
	gitsigns.diffthis("~")
end, {})
vim.keymap.set("n", "<leader>td", gitsigns.toggle_deleted, {})
