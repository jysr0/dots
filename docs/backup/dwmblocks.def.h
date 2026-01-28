// NOTES: if `statuscmd` dwm patch is going to be used, patch dwmblocks using dwmblocks's github patch...
//        if dwmblocks build failed, edit the Makefile and add `-std=gnu17` to the beginning of CFLAGS. (Issue #83)

//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
    /*Icon*/	/*Command*/		/*Update Interval in s*/	/*Update Signal (1-31)*/
    //{"ROOT: ",	"df -h | awk 'NR==5 { print $5 }'",				3600,	0},
    //{"HOME: ",	"df -h | awk 'NR==11 { print $5 }'",			3600,	0},
    //{"IP: ",	"ip -f inet address | awk 'NR==6 { print $2 }'",	10,		0},
    //{"KeyB: ",	"a.out | awk 'NR==2 { print $3 }'",				1,		0},

    //{" ",	"dwmb_ram.sh",								120,		3}, 
    {" ",	"dwmb_cpu.sh",								120,		1},	
    {"",	"dwmb_network2.sh",							10,			4},		
    //{"",	"dwmb_rxtx.sh",								10,			0},
    {"",    "dwmb_battery1.sh",							3,			8},	
    {"",	"dwmb_brightness.sh",						0,			2},
    {"",	"dwmb_volume.sh",							0,			5},				
    {"",	"dwmb_kb_layout.sh",						0,			9},				
    {"", 	"dwmb_clock.sh",							60,			7},
    //{"", 	"dwmb_kernel.sh",							3600,		0},
    //{"",	"dwmb_uptime.sh",							600,		0},
    //{"",	"dwmb_playing.sh",							3,			0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "|";
static unsigned int delimLen = 5;
