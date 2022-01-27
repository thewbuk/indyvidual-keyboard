#include <stdio.h>
#include <string.h>
#include <ctype.h>

typedef struct{
	int value;
	char name[10];
}Key;

int main(void){
	int x=0, i=0, j, ctr;
	char line[255], c;
	Key keys[]={ //sorted by the config[button] in LuaMacros
		{8, "backspace"},
		{9,"tab"}, 
		{13, "enter"},
		{16, "shift"},
		{17, "control"},
		{18, "alt"},
		{20, "caps"},
		{27, "escape"},
		{32, "space"},
		{33, "pgup"},
		{34, "pgdown"},
		{35, "end"},
		{36, "home"},
		{37, "left"},
		{38, "up"},
		{39, "right"}, 
		{40, "down"},
		{45, "insert"},
		{46, "delete"},
		{48, "0"},
		{49, "1"},
		{50, "2"},
		{51, "3"},
		{52, "4"},
		{53, "5"},
		{54, "6"},
		{55, "7"},
		{56, "8"}, 
		{57, "9"},
		{65, "a"},
		{66, "b"},
		{67, "c"},
		{68, "d"},
		{69, "e"},
		{70, "f"},
		{71, "g"},
		{72, "h"},
		{73, "i"},
		{74, "j"},
		{75, "k"},
		{76, "l"},
		{77, "m"},
		{78, "n"},
		{79, "o"},
		{80, "p"},
		{81, "q"},
		{82, "r"},
		{83, "s"},
		{84, "t"},
		{85, "u"},
		{86, "v"},
		{87, "w"},
		{88, "x"},
		{89, "y"},
		{90, "z"},
		{93, "menu"},
		{96, "#0"},
		{97, "#1"},
		{98, "#2"},
		{99, "#3"},
		{100, "#4"},
		{101, "#5"},
		{102, "#6"},
		{103, "#7"},
		{104, "#8"},
		{105, "#9"},
		{106, "#*"},
		{107, "#+"},
		{109, "#-"},
		{110, "#."},
		{111, "#/"},
		{112, "F1"},
		{113, "F2"},
		{114, "F3"},
		{115, "F4"},
		{116, "F5"},
		{117, "F6"},
		{118, "F7"},
		{119, "F8"},
		{120, "F9"},
		{121, "F10"},
		{122, "F11"},
		{123, "F12"},
		{145, "scrlk"},
		{186, ";"},
		{187, "="},
		{188, ","},
		{189, "-"},
		{190, "."},
		{191, "/"},
		{192, "`"},
		{219, "["},
		{220, "\\"},
		{221, "]"},
		{222, "'"}
	};
	Key sorted[]={ //sorted by keyboard layout except the "\" key
		{27, "escape"},
		{112, "F1"},
		{113, "F2"},
		{114, "F3"},
		{115, "F4"},
		{116, "F5"},
		{117, "F6"},
		{118, "F7"},
		{119, "F8"},
		{120, "F9"},
		{121, "F10"},
		{122, "F11"},
		{123, "F12"},
		{145, "scrlk"},
		
		{220, "\\"}, 
		//several keyboard layouts differ with this key
		//I recommend grouping this with your layout in the .AHK
		
		{192, "`"},
		{49, "1"},
		{50, "2"},
		{51, "3"},
		{52, "4"},
		{53, "5"},
		{54, "6"},
		{55, "7"},
		{56, "8"}, 
		{57, "9"},
		{48, "0"},
		{189, "-"},
		{187, "="},
		{8, "backspace"},
		
		{9,"tab"},
		{81, "q"},
		{87, "w"},
		{69, "e"},
		{82, "r"},		
		{84, "t"},
		{89, "y"},
		{85, "u"},
		{73, "i"},
		{79, "o"},
		{80, "p"},
		{219, "["},
		{221, "]"},
		
		{20, "caps"},
		{65, "a"},
		{83, "s"},		
		{68, "d"},
		{70, "f"},
		{71, "g"},
		{72, "h"},
		{74, "j"},
		{75, "k"},
		{76, "l"},
		{186, ";"},
		{222, "'"},
		{13, "enter"},
		
		{16, "shift"},
		{90, "z"},
		{88, "x"},
		{67, "c"},
		{86, "v"},
		{66, "b"},
		{78, "n"},
		{77, "m"},
		{188, ","},
		{190, "."},
		{191, "/"},
		
		{17, "control"},
		{18, "alt"},
		{32, "space"},
		{93, "menu"},
		
		{45, "insert"},
		{46, "delete"},
		{36, "home"},
		{35, "end"},
		{33, "pgup"},
		{34, "pgdown"},
		
		{37, "left"},
		{38, "up"},
		{39, "right"}, 
		{40, "down"},
		
		{111, "#/"},
		{106, "#*"},
		{109, "#-"},
		{103, "#7"},
		{104, "#8"},
		{105, "#9"},
		{107, "#+"},
		{100, "#4"},
		{101, "#5"},
		{102, "#6"},
		{97, "#1"},
		{98, "#2"},
		{99, "#3"},
		{96, "#0"},
		{110, "#."},
	};
	
	FILE *fp;
	puts("AH0K Multi Keyb Maker");
	puts("Input macro keyboard number, 0 is for the regular keyboard");
	printf("Input keyboard #: ");
	scanf("%d", &x);
	
	if(isdigit(x)){
		puts("Not a number, exiting");
		getch();
		return 0;
	}
	if(x>1){
		fflush(stdin);
		puts("\n(I)nclusive or (E)clusive: ");
		scanf("%c", &c);
		if(c=='I' || c=='i' || c=='E' || c=='e'){
			if(c=='E' || c=='e'){
				i=x-1;
				printf("Keyboard: %d", x);
			}else{
				printf("Keyboards: 1-%d", x);
			}
			getch();
		}else{
			puts("Not a 'I' or 'E', exiting");
			getch();
			return 0;
		}
	}
	puts("");
	fp=fopen("ahk multi keyb.txt", "w");
	if(fp!=NULL){
//		printf("len: %d", sizeof(keys)/sizeof(Key));
//		puts("File has been opened");
		for(ctr=0; i<x;i++){
			for(j=0;j<95;j++, ctr++){
				sprintf(line, "\n\tCase \"%d\": ;MK%d - %s", sorted[j].value+(i*255), i+1, sorted[j].name);
				fprintf(fp, "%s", line);
			}
		}
		fclose(fp);
		printf("\nFile has been closed with %d keys templated into", ctr);
	}else{
		puts("fopen() failed");
	}
	return 0;
	
}
