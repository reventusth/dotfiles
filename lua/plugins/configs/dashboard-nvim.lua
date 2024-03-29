local g = vim.g

g.dashboard_disable_at_vimenter = 0
g.dashboard_disable_statusline = 1
g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
	"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
	"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
	"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
	"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
	"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
	"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
	" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
	" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
	"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
	"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
	"                                   ",
}
-- g.dashboard_custom_header = {
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"            :h-                                  Nhy`               ",
-- 	"           -mh.                           h.    `Ndho               ",
-- 	"           hmh+                          oNm.   oNdhh               ",
-- 	"          `Nmhd`                        /NNmd  /NNhhd               ",
-- 	"          -NNhhy                      `hMNmmm`+NNdhhh               ",
-- 	"          .NNmhhs              ```....`..-:/./mNdhhh+               ",
-- 	"           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
-- 	"           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
-- 	"      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
-- 	" .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
-- 	" h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
-- 	" hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
-- 	" /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
-- 	"  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
-- 	"   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
-- 	"     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
-- 	"       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
-- 	"       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
-- 	"       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
-- 	"       //+++//++++++////+++///::--                 .::::-------::   ",
-- 	"       :/++++///////////++++//////.                -:/:----::../-   ",
-- 	"       -/++++//++///+//////////////               .::::---:::-.+`   ",
-- 	"       `////////////////////////////:.            --::-----...-/    ",
-- 	"        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
-- 	"         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
-- 	"           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
-- 	"            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
-- 	"           s-`::--:::------:////----:---.-:::...-.....`./:          ",
-- 	"          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
-- 	"         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
-- 	"        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
-- 	"                        .-:mNdhh:.......--::::-`                    ",
-- 	"                           yNh/..------..`                          ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- 	"                                                                    ",
-- }

g.dashboard_custom_section = {
	a = { description = { "" }, command = "" },
}

local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))
local lazy_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/opt", "*", 0, 1))
g.dashboard_custom_footer = { "♡ " .. plugins_count .. " plugins loaded, " .. lazy_count .. " lazy. ♡" }
