local home = os.getenv('HOME')
local db = require('dashboard')
-- macos
db.preview_command = 'cat' -- | lolcat -F 0.3'
-- linux
-- db.preview_command = 'ueberzug'
--
db.preview_file_path = home .. '/.config/nvim/static/nignite-ascii.txt'
db.preview_file_height =26
db.preview_file_width = 40
db.custom_center = {
	{icon = '  ',
	desc = 'Open from Bookmark                        ',
	shortcut = 'SPC b <name>'},
	{icon = '  ',
	desc = 'Search  File                              ',
	action = 'Telescope find_files find_command=rg,--hidden,--files',
	shortcut = 'SPC s f     '},
	{icon = '  ',
	desc = 'Search  word                              ',
	action = 'Telescope live_grep',
	shortcut = 'SPC s w     '},
	{icon = '󰙅  ',
	desc = 'Focus on tree                             ',
	action = 'NERDTreeFocus',
	shortcut = 'SPC n       '},
	{icon = '󰗼  ',
	desc = 'Exit                                      ',
	action =  ':qa',
	shortcut = 'SPC q       '},

}
