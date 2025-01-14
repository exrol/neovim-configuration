-- TODO : Check / understand options , moremap, silent ...

local opts = { noremap = true, silent = true }
local keymap_set = vim.keymap.set

-- Telescope ( File search )
local telescope_builtin = require('telescope.builtin')
keymap_set('n', '<leader>ff', telescope_builtin.find_files, {})
keymap_set('n', '<leader>fg', telescope_builtin.live_grep, {})
keymap_set('n', '<leader>fb', telescope_builtin.buffers, {})

-- NvimTree ( File tree exoplorer )
-- TODO : Use nvim tree api local nvimtree_api = require('nvim-tree.api')
keymap_set('n', '<leader>ft', ':NvimTreeFindFileToggle<CR>',opts)

-- Cycle through errors
keymap_set('n', '<leader>n', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
keymap_set('n', '<leader>p', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
--
--             on_attach = function(bufnr)
--                -- Actions
--     vim.keymap.set('n', '<leader>hs', gitsigns.stage_hunk, {})
--     vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, {})
--     vim.keymap.set('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {})
--     vim.keymap.set('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {})
--     vim.keymap.set('n', '<leader>hS', gitsigns.stage_buffer, {})
--     vim.keymap.set('n', '<leader>hu', gitsigns.undo_stage_hunk, {})
--     vim.keymap.set('n', '<leader>hR', gitsigns.reset_buffer, {})
--     vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk, {})
--     vim.keymap.set('n', '<leader>hb', function() gitsigns.blame_line{full=true} end, {})
--     vim.keymap.set('n', '<leader>tb', gitsigns.toggle_current_line_blame, {})
--     vim.keymap.set('n', '<leader>hd', gitsigns.diffthis, {})
--     vim.keymap.set('n', '<leader>hD', function() gitsigns.diffthis('~') end, {})
--     vim.keymap.set('n', '<leader>td', gitsigns.toggle_deleted, {})
-- end
