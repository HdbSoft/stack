#ifndef __EMBEDDED__
#define __EMBEDDED__

#define _STDIO_H_

#define VGA_ADDRESS 0xB8000
#define BUFSIZE     2200

#define DefBackColor BLACK
#define DefForeColor WHITE

static u16*   VgaBuffer;
static u32    VgaIndex;
static u32    NextLine=1;

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
//VGA functions and variables

u8 inb(u16 port) {
	u8 ret;
	asm volatile("inb %1, %0" : "=a"(ret) : "d"(port));
	return ret;
}

void outb(u16 port, u8 data) {
	asm volatile("outb %0, %1" : "=a"(data) : "d"(port));
}

char charin() {
	char character = 0;
	while ((character = inb(KEYBOARD_PORT)) != 0) {
		if (character > 0)
			return character;
	}

	return character;
}

void newline() {
	if (NextLine >= 55) {
		NextLine = 0;
		ClearVgaBuffer(VgaBuffer, DefForeColor, DefBackColor);
	}

	VgaIndex = 80 * NextLine;
	NextLine++;
}

void sysputc(char character, Ui8 fore_color, Ui8 back_color) {
	VgaBuffer[vga_index] = vga_entry(character, fore_color, back_color);
	VgaIndex++;
}

void sysputs(String str, u8 fore_color, u8 back_color) {
	u32 index = 0;

	while (str[index]) {
		sysputc(str[index], fore_color, back_color);
		index++;
	}
}

void sysputi(i32 num, u8 fore_color, u8 back_color) {
	char str_num[digits(num) + 1];
	ItoA(num, str_num);
	sysputs(str_num, fore_color, back_color);
}

void gotoxy(u16 x, u16 y) {
	VgaIndex = 80 * y;
	VgaIndex += x;
}

void ClearScreen(Ui8 fore_color, Ui8 back_color) {
	ClearVgaBuffer(&VgaBuffer, fore_color, back_color);
}

void sleep(u32 timer_count) {
	loop {
		asm volatile("nop");
		timer_count--;
		if (timer_count <= 0)
			break;
	}
}

#endif //Starlang embedded.st