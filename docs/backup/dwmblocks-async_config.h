#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER "|"

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 25

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 1

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 0

// Define blocks for the status feed as X(icon, cmd, interval, signal).
#define BLOCKS(X)\
    X( " ",	"sb-cpu",							300,		1) /*highest sig: 9*/\
    X( "",	"sb-net",							10,			4)\
    X( "",  "sb-pkg-up",						0,			6)\
    X( "",  "sb-bat",							5,			8)\
    X( "",	"sb-vol",							0,			5)\
    X( "", 	"sb-time",							60,			7)\
    X( "", 	"sb-pow-mnu",						0,			3)
    
    //X( "",	"sb-bright",						0,			2)
    //X( "",	"sb-kb",						    0,			9)
    //X("ROOT: ",	"df -h | awk 'NR==5 { print $5 }'",				3600,	0)
    //X("HOME: ",	"df -h | awk 'NR==11 { print $5 }'",			3600,	0)
    //X("IP: ",	"ip -f inet address | awk 'NR==6 { print $2 }'",	10,		0)
    //X("KeyB: ",	"a.out | awk 'NR==2 { print $3 }'",				1,		0)
	//X(" ",	"sb-ram",								120,		3)
	//X("",		"sb-net-rt",							10,			0)
    //X("", 	"sb-kernel",							3600,		0)
    //X("",		"sb-uptime",							600,		0)
    //X("",		"'sb-playing?'",						3,			0)

#endif  // CONFIG_H
