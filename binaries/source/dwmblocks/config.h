//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "cat /tmp/recordingicon 2>/dev/null",	0,	9}, 
	/*{"",	"sb-tasks",	10,	26}, */
	/* {"",	"sb-music",	0,	11}, */
	{"",	"/home/augustun1000/.config/scripts/suckless/dwmblocks/memory",	10,	14},
	{"",	"/home/augustun1000/.config/scripts/suckless/dwmblocks/cpu",		10,	18},
	/*{"",	"sb-doppler",	0,	13}, */ 
	/*{"",	"sb-nettraf",	1,	16}, */
	{"",	"/home/augustun1000/.config/scripts/suckless/dwmblocks/volume",	0,	10},
	/*{"",	"sb-internet",	5,	4}, */
	/* {"",	"sb-iplocate", 0,	27}, */
	/*{"",	"sb-help-icon",	0,	15},*/
	{"",	"/home/augustun1000/.config/scripts/suckless/dwmblocks/Powermenu-Cli-Augustun1000.sh",	100,	100},
	{"",	"/home/augustun1000/.config/scripts/suckless/dwmblocks/keyboard",	0,	0},
	{"",	"/home/augustun1000/.config/scripts/suckless/dwmblocks/clock",	60,	1},
	{"",	"/home/augustun1000/.config/scripts/suckless/dwmblocks/battery",	5,	3},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
