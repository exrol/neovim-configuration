return {
	"goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "  ▒▒▒╗   ▒▒╗▒▒▒▒▒▒▒╗ ▒▒▒▒▒▒╗ ▒▒╗   ▒▒╗▒▒╗▒▒▒╗   ▒▒▒╗ ",
    "  ▒▒▒▒╗  ▒▒║▒▒╔════╝▒▒╔═══▒▒╗▒▒║   ▒▒║▒▒║▒▒▒▒╗ ▒▒▒▒║ ",
    "  ▒▒╔▒▒╗ ▒▒║▒▒▒▒▒╗  ▒▒║   ▒▒║▒▒║   ▒▒║▒▒║▒▒╔▒▒▒▒╔▒▒║ ",
    "  ▒▒║╚▒▒╗▒▒║▒▒╔══╝  ▒▒║   ▒▒║╚▒▒╗ ▒▒╔╝▒▒║▒▒║╚▒▒╔╝▒▒║ ",
    "  ▒▒║ ╚▒▒▒▒║▒▒▒▒▒▒▒╗╚▒▒▒▒▒▒╔╝ ╚▒▒▒▒╔╝ ▒▒║▒▒║ ╚═╝ ▒▒║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "  ________________________ ネオビム の エクスロル __ ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file / 新規ファイル" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file / ファイルを検索", ":Telescope find_files<CR>"),
--    dashboard.button( "f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent / 最近のファイル"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings / 設定" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM / 終了", ":qa<CR>"),
}

-- Set footer
--   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
--   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
--   ```init.lua
--   return require('packer').startup(function()
--       use 'wbthomason/packer.nvim'
--       use {
--           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
--           requires = {'BlakeJC94/alpha-nvim-fortune'},
--           config = function() require("config.alpha") end
--       }
--   end)
--   ```
-- local fortune = require("alpha.fortune") 
-- dashboard.section.footer.val = fortune()
--
-- Todo list / Max 9 items
local todolist = {

    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    " ╭── Todolist / トゥードゥーリスト ────────────────╮ ",
    " │                                                 │ ",
    " │   • Autocompletion                              │ ",
    " │   • LSP                                         │ ",
    " │   • Todolist managment                          │ ",
    " │                                                 │ ",
    " ╰─────────────────────────────────────────────────╯ ",
    "                                                     ",
}
dashboard.section.footer.val = todolist

-- Send config to alpha
alpha.setup(dashboard.opts)
-- -- Disable folding on alpha buffer
-- vim.cmd([[
--     autocmd FileType alpha setlocal nofoldenable
-- ]])
--         alpha.setup(theme)
     end
 }







 -- Draft / symbols ...

-- 🟥
-- 🟦
-- local numbers = {
--     0 = 🯰,
--     1 = 🯱,
--     2 = 🯲,
--     3 = 🯳,
--     4 = 🯴,
--     5 = 🯵,
--     6 = 🯶,
--     7 = 🯷,
--     8 = 🯸,
--     9 = 🯹,
-- }
-- U+258x 	▀ 	▁ 	▂ 	▃ 	▄ 	▅ 	▆ 	▇ 	█ 	▉ 	▊ 	▋ 	▌ 	▍ 	▎ 	▏
-- U+259x 	▐ 	░ 	▒ 	▓ 	▔ 	▕ 	▖ 	▗ 	▘ 	▙ 	▚ 	▛ 	▜ 	▝ 	▞ 	▟
-- U+1FB0x 	🬀 	🬁 	🬂 	🬃 	🬄 	🬅 	🬆 	🬇 	🬈 	🬉 	🬊 	🬋 	🬌 	🬍 	🬎 	🬏
-- U+1FB1x 	🬐 	🬑 	🬒 	🬓 	🬔 	🬕 	🬖 	🬗 	🬘 	🬙 	🬚 	🬛 	🬜 	🬝 	🬞 	🬟
-- U+1FB2x 	🬠 	🬡 	🬢 	🬣 	🬤 	🬥 	🬦 	🬧 	🬨 	🬩 	🬪 	🬫 	🬬 	🬭 	🬮 	🬯
-- U+1FB3x 	🬰 	🬱 	🬲 	🬳 	🬴 	🬵 	🬶 	🬷 	🬸 	🬹 	🬺 	🬻 	🬼 	🬽 	🬾 	🬿
-- U+1FB4x 	🭀 	🭁 	🭂 	🭃 	🭄 	🭅 	🭆 	🭇 	🭈 	🭉 	🭊 	🭋 	🭌 	🭍 	🭎 	🭏
-- U+1FB5x 	🭐 	🭑 	🭒 	🭓 	🭔 	🭕 	🭖 	🭗 	🭘 	🭙 	🭚 	🭛 	🭜 	🭝 	🭞 	🭟
-- U+1FB6x 	🭠 	🭡 	🭢 	🭣 	🭤 	🭥 	🭦 	🭧 	🭨 	🭩 	🭪 	🭫 	🭬 	🭭 	🭮 	🭯
-- U+1FB7x 	🭰 	🭱 	🭲 	🭳 	🭴 	🭵 	🭶 	🭷 	🭸 	🭹 	🭺 	🭻 	🭼 	🭽 	🭾 	🭿
-- U+1FB8x 	🮀 	🮁 	🮂 	🮃 	🮄 	🮅 	🮆 	🮇 	🮈 	🮉 	🮊 	🮋 	🮌 	🮍 	🮎 	🮏
-- U+1FB9x 	🮐 	🮑 	🮒 		🮔 	🮕 	🮖 	🮗 	🮘 	🮙 	🮚 	🮛 	🮜 	🮝 	🮞 	🮟
-- U+1FBAx 	🮠 	🮡 	🮢 	🮣 	🮤 	🮥 	🮦 	🮧 	🮨 	🮩 	🮪 	🮫 	🮬 	🮭 	🮮 	🮯
-- U+1FBBx 	🮰 	🮱 	🮲 	🮳 	🮴 	🮵 	🮶 	🮷 	🮸 	🮹 	🮺 	🮻 	🮼 	🮽 	🮾 	🮿
-- U+1FBCx 	🯀 	🯁 	🯂 	🯃 	🯄 	🯅 	🯆 	🯇 	🯈 	🯉 	🯊 	🯋 	🯌 	🯍 	🯎 	🯏
-- U+1FBDx 	🯐 	🯑 	🯒 	🯓 	🯔 	🯕 	🯖 	🯗 	🯘 	🯙 	🯚 	🯛 	🯜 	🯝 	🯞 	🯟
-- U+1FBEx 	🯠 	🯡 	🯢 	🯣 	🯤 	🯥 	🯦 	🯧 	🯨 	🯩 	🯪 	🯫 	🯬 	🯭 	🯮 	🯯
-- U+1FBFx 	🯰 	🯱 	🯲 	🯳 	🯴 	🯵 	🯶 	🯷 	🯸 	🯹 
--  	0 	1 	2 	3 	4 	5 	6 	7 	8 	9 	A 	B 	C 	D 	E 	F
-- U+250x 	─ 	━ 	│ 	┃ 	┄ 	┅ 	┆ 	┇ 	┈ 	┉ 	┊ 	┋ 	┌ 	┍ 	┎ 	┏
-- U+251x 	┐ 	┑ 	┒ 	┓ 	└ 	┕ 	┖ 	┗ 	┘ 	┙ 	┚ 	┛ 	├ 	┝ 	┞ 	┟
-- U+252x 	┠ 	┡ 	┢ 	┣ 	┤ 	┥ 	┦ 	┧ 	┨ 	┩ 	┪ 	┫ 	┬ 	┭ 	┮ 	┯
-- U+253x 	┰ 	┱ 	┲ 	┳ 	┴ 	┵ 	┶ 	┷ 	┸ 	┹ 	┺ 	┻ 	┼ 	┽ 	┾ 	┿
-- U+254x 	╀ 	╁ 	╂ 	╃ 	╄ 	╅ 	╆ 	╇ 	╈ 	╉ 	╊ 	╋ 	╌ 	╍ 	╎ 	╏
-- U+255x 	═ 	║ 	╒ 	╓ 	╔ 	╕ 	╖ 	╗ 	╘ 	╙ 	╚ 	╛ 	╜ 	╝ 	╞ 	╟
-- U+256x 	╠ 	╡ 	╢ 	╣ 	╤ 	╥ 	╦ 	╧ 	╨ 	╩ 	╪ 	╫ 	╬ 	╭ 	╮ 	╯
-- U+257x 	╰ 	╱ 	╲ 	╳ 	╴ 	╵ 	╶ 	╷ 	╸ 	╹ 	╺ 	╻ 	╼ 	╽ 	╾ 	╿
