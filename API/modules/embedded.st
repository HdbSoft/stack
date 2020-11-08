#ifndef __EMBEDDED__
#define __EMBEDDED__

#define VGA_ADDRESS 0xB8000
#define BUFSIZE     2200

#define DefBackColor BLACK
#define DefForeColor WHITE

static u16*   VgaBuffer;
static u32    VgaIndex;

enum VgaColor {
	BLACK,
	BLUE,
	GREEN,
	CYAN,
	RED,
	MAGENTA,
	BROWN,
	GREY,
	DARK_GREY,
	BRIGHT_BLUE,
	BRIGHT_GREEN,
	BRIGHT_CYAN,
	BRIGHT_RED,
	BRIGHT_MAGENTA,
	YELLOW,
	WHITE,
};
//VGA colors

u16 VgaEntry(u8 ch,
	          u8 fore_color,
	          u8 back_color) 
{
	u16 ax = 0;
    u8 ah=0, al=0;

    ah = back_color;
    ah <<= 4;
    ah |= fore_color;
    ax = ah;
    ax <<= 8;
    al = ch;
    ax |= al;

    return ax;
}

void ClearVgaBuffer(u16** buffer,
	                u8 fore_color,
	                u8 back_color) 
{
    u32 i;
    for (i = 0; i < BUFSIZE; i++) {
        (*buffer)[i] = VgaEntry(NULL, fore_color, back_color);
    }
}

void InitVga(u8 fore_color,
	         u8 back_color) 
{
    VgaBuffer = (u16*)VGA_ADDRESS;
    clear_vga_buffer(&VgaBuffer, fore_color, back_color);
}

#endif //Starlang embedded.st