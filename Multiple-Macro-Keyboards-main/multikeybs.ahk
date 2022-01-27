#NoEnv
SendMode Input
#KeyHistory
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

global mode:= "false"

~F24:: ;standard keys
FileRead, key, G:\AutoHotkey, HIDmacros, Lua\Lua+AHK\keypressed.txt
If (ErrorLevel>0)
	MsgBox, error.
else{
	switch key
	{
		;Keyboard 1
			;function row
				Case "27": ;MK1 - escape
					Runners("aomx")
				Case "112": ;MK1 - F1
					Send {Volume_Up 1}
				Case "113": ;MK1 - F2
					Send {Volume_Down}
				Case "114": ;MK1 - F3
					Send {Volume_Mute}
				Case "115": ;MK1 - F4
					Runners("sndvol")
				Case "116": ;MK1 - F5
					Runners("animes")
				Case "117": ;MK1 - F6
					Runners("lives")
				Case "118": ;MK1 - F7
					Runners("music")
				Case "119": ;MK1 - F8
					Runners("games")
				Case "120": ;MK1 - F9
					Runners("nocon")
				Case "121": ;MK1 - F10
					Runners("sndcpy")
				Case "145": ;MK1 - scrlk
					Runners("obs")
			
			;row 1
				Case "192": ;MK1 - `
					Runners("messenger")
				Case "49": ;MK1 - 1
					Runners("nutaku")
				Case "50": ;MK1 - 2
					Runners("fb")
				Case "51": ;MK1 - 3
					Runners("yt")
				Case "52": ;MK1 - 4
					Runners("netflix")
				Case "53": ;MK1 - 5
					Runners("ak")
				Case "54": ;MK1 - 6
					Runners("mal")
				Case "55": ;MK1 - 7
					Runners("plex")
				Case "56": ;MK1 - 8
					Runners("rav")
				Case "57": ;MK1 - 9
					Runners("nicehash")
				Case "48": ;MK1 - 0
					Runners("shopee")
				Case "189": ;MK1 - -
					Runners("laz")
				Case "187": ;MK1 - =
					Runners("amazon")
				Case "220": ;MK1 - \
					Runners("newegg")
				Case "8": ;MK1 - backspace
					Runners("firefox")
			;row 2
				Case "9": ;MK1 - tab
					Runners("c")
				Case "81": ;MK1 - q
					Runners("d")
				Case "87": ;MK1 - w
					Runners("e")
				Case "69": ;MK1 - e
					Runners("word")
				Case "82": ;MK1 - r
					Runners("excel")
				Case "84": ;MK1 - t
					Runners("ppt")
				Case "89": ;MK1 - 
					Runners("github")
				Case "85": ;MK1 - u
					Runners("translate")
				Case "73": ;MK1 - i
					Runners("reddit")
				Case "79": ;MK1 - 
					Runners("nyaa")
				Case "80": ;MK1 - p
					Runners("pma")
				Case "219": ;MK1 - [
					Runners("pcp")
				Case "221": ;MK1 - ]
					Runners("vlc")
			;row 3
				Case "20": ;MK1 - caps
					Runners("f")
				Case "65": ;MK1 - a
					Runners("g")
				Case "83": ;MK1 - s
					Runners("h")
				Case "68": ;MK1 - d
					Runners("nester")
				Case "70": ;MK1 - f
					Runners("rpcs3")
				Case "71": ;MK1 - g
					Runners("ppsspp")
				Case "72": ;MK1 - h
					Runners("epsxe")
				Case "74": ;MK1 - j
					Runners("vscode")
				Case "75": ;MK1 - k)
					Runners("github desk")
				Case "76": ;MK1 - l
					Runners("discord")
				Case "186": ;MK1 - ;
					Runners("photoshop")
				Case "222": ;MK1 - '
					Runners("premiere")
				Case "13": ;MK1 - enter
					Runners("wifi on")
			;row 4
				Case "90": ;MK1 - z
					Runners("i")
				Case "88": ;MK1 - x
					Runners("120gb ssd")
				Case "67": ;MK1 - c
					Runners("epic")
				Case "86": ;MK1 - v
					Runners("gog")
				Case "66": ;MK1 - b
					Runners("steam")
				Case "78": ;MK1 - n
					Runners("Downloads")
				Case "77": ;MK1 - m
					Runners("Documents")
				Case "188": ;MK1 - ,
					Runners("class")
				Case "190": ;MK1 - .
					Runners("git repos")
				Case "191": ;MK1 - /
					Runners("wifi off")
			Case "32": ;MK2 - space
				Magic("1")
			;editing keys
				Case "36": ;MK1 - home
					Runners("mail 0")
				Case "35": ;MK1 - end
					Runners("drive 0")
				Case "33": ;MK1 - pgup
					Runners("mail 1")
				Case "34": ;MK1 - pgdown
					Runners("drive 1")
			;numpad
				Case "106": ;MK1 - #*
					Runners("docs 1")
				Case "109": ;MK1 - #-
					Runners("slides 0")
				Case "105": ;MK1 - #9
					Runners("sheets 0")
				Case "102": ;MK1 - #6
					Runners("canvas")
		;Keyboard 2
			;function row
				Case "282": ;MK2 - escape
					MsgBox, You entered "forms".
				Case "367": ;MK2 - F1
					MsgBox, You entered "blue".
				Case "368": ;MK2 - F2
					MsgBox, You entered "green".
				Case "369": ;MK2 - F3
					MsgBox, You entered "orange".
				Case "370": ;MK2 - F4
					MsgBox, You entered "cyan".
				Case "371": ;MK2 - F5
					MsgBox, You entered "gray".
				Case "372": ;MK2 - F6
					MsgBox, You entered "red".
				Case "373": ;MK2 - F7
					MsgBox, You entered "white".
				Case "374": ;MK2 - F8
					MsgBox, You entered "black".
				Case "375": ;MK2 - F9
					MsgBox, You entered "w25".
				Case "376": ;MK2 - F10
					MsgBox, You entered "w50".
				Case "377": ;MK2 - F11
					MsgBox, You entered "w75".
				Case "378": ;MK2 - F12
					MsgBox, You entered "w100".
				Case "400": ;MK2 - scrlk
					MsgBox, You entered "auto".

			;row 1
				Case "447": ;MK2 - `
					Codist("w3schools")
				Case "304": ;MK2 - 1
					Codist("html")
				Case "305": ;MK2 - 2
					MsgBox, You entered "div".
				Case "306": ;MK2 - 3
					MsgBox, You entered "img".
				Case "307": ;MK2 - 4
					MsgBox, You entered "a".
				Case "308": ;MK2 - 5
					MsgBox, You entered "ol".
				Case "309": ;MK2 - 6
					MsgBox, You entered "li".
				Case "310": ;MK2 - 7
					MsgBox, You entered "hr".
				Case "311": ;MK2 - 8
					MsgBox, You entered "bg".
				Case "312": ;MK2 - 9
					MsgBox, You entered "container".
				Case "303": ;MK2 - 0
					MsgBox, You entered "dropdown".
				Case "444": ;MK2 - -
					MsgBox, You entered "button"
				Case "442": ;MK2 - =
					Codist("nodejs")
				Case "263": ;MK2 - backspace
					MsgBox, You entered "nodejs starter".			
			;row 2
				Case "264": ;MK2 - tab
					MsgBox, You entered "table".
				Case "336": ;MK2 - q
					MsgBox, You entered "tr".
				Case "342": ;MK2 - w
					MsgBox, You entered "td".
				Case "324": ;MK2 - e
					MsgBox, You entered "p".
				Case "337": ;MK2 - r
					MsgBox, You entered "ul".
				Case "339": ;MK2 - t
					MsgBox, You entered "span".
				Case "344": ;MK2 - y
					MsgBox, You entered "pre".
				Case "340": ;MK2 - u
					MsgBox, You entered "br".
				Case "328": ;MK2 - i
					MsgBox, You entered "nav item".
				Case "334": ;MK2 - o
					MsgBox, You entered "card".
				Case "335": ;MK2 - p
					MsgBox, You entered "alerts".
				Case "474": ;MK2 - [
					MsgBox, You entered "badge".
				Case "476": ;MK2 - ]
					MsgBox, You entered "accordion".

			;row 3
				Case "275": ;MK2 - caps
					MsgBox, You entered "if(isset()){}".
				Case "320": ;MK2 - a
					Codist("php")
				Case "338": ;MK2 - s
					MsgBox, You entered "echo".
				Case "323": ;MK2 - d
					MsgBox, You entered "input".
				Case "325": ;MK2 - f
					MsgBox, You entered "select".
				Case "326": ;MK2 - g
					MsgBox, You entered "check".
				Case "327": ;MK2 - h
					MsgBox, You entered "radio".
				Case "329": ;MK2 - j
					MsgBox, You entered "striped".
				Case "330": ;MK2 - k
					MsgBox, You entered "hover".
				Case "331": ;MK2 - l
					MsgBox, You entered "active".
				Case "441": ;MK2 - ;
					MsgBox, You entered "disabled".
				Case "477": ;MK2 - '
					MsgBox, You entered "list group".
				Case "475": ;MK2 - \
					MsgBox, You entered "pagination".
				Case "268": ;MK2 - enter
					MsgBox, You entered "db conn".

			;row 4
				Case "345": ;MK2 - z
					MsgBox, You entered "login".
				Case "343": ;MK2 - x
					MsgBox, You entered "signup".
				Case "322": ;MK2 - c
					MsgBox, You entered "app.get".
				Case "341": ;MK2 - v
					MsgBox, You entered "app.post".
				Case "321": ;MK2 - b
					MsgBox, You entered "ejs<>".
				Case "333": ;MK2 - n
					MsgBox, You entered "select".
				Case "332": ;MK2 - m
					MsgBox, You entered "insert".
				Case "443": ;MK2 - ,
					MsgBox, You entered "delete".
				Case "445": ;MK2 - .
					MsgBox, You entered "update".
				Case "446": ;MK2 - /
					MsgBox, You entered "join".

			Case "287": ;MK2 - space
				Magic("2")
			;editing keys
				Case "300": ;MK2 - insert
					MsgBox, You entered "x".
				Case "301": ;MK2 - delete
					MsgBox, You entered "y".
				Case "291": ;MK2 - home
					MsgBox, You entered "t".
				Case "290": ;MK2 - end
					MsgBox, You entered "l".
				Case "288": ;MK2 - pgup
					MsgBox, You entered "b".
				Case "289": ;MK2 - pgdown
					MsgBox, You entered "r".
				Case "292": ;MK2 - left
					MsgBox, You entered "h25".
				Case "293": ;MK2 - up
					MsgBox, You entered "h50".
				Case "294": ;MK2 - right
					MsgBox, You entered "h75".
				Case "295": ;MK2 - down
					MsgBox, You entered "h100".
			;numpad
				Case "366": ;MK2 - #/
					MsgBox, You entered "p".
				Case "361": ;MK2 - #*
					MsgBox, You entered "m".
				Case "364": ;MK2 - #-
					MsgBox, You entered "g".
				Case "358": ;MK2 - #7
					MsgBox, You entered "sm".
				Case "359": ;MK2 - #8
					MsgBox, You entered "md".
				Case "360": ;MK2 - #9
					MsgBox, You entered "lg".
				Case "362": ;MK2 - #+
					MsgBox, You entered "col".
				Case "355": ;MK2 - #4
					MsgBox, You entered "border".
				Case "356": ;MK2 - #5
					MsgBox, You entered "xl".
				Case "357": ;MK2 - #6
					MsgBox, You entered "xxl".
				Case "352": ;MK2 - #1
					MsgBox, You entered "rounded".
				Case "353": ;MK2 - #2
					MsgBox, You entered "text".
				Case "354": ;MK2 - #3
					MsgBox, You entered "justify".
				Case "351": ;MK2 - #0
					MsgBox, You entered "row".
				Case "365": ;MK2 - #.
					Codist("bootstrap")
		default:
			MsgBox, You entered "%key%", key not assigned
			Return
	}
}
Return ;from luamacros F24
;THE BLOCK OF CODE ABOVE is the original, simple Luamacros-dependant script.

Runners(x)
{
	switch x
	{
		; misc
			Case "sndvol":
				Run, C:\Windows\System32\SndVol.exe -f 111111111
			Case "scrcpy":
				Run E:\scrcpy-win64-v1.16\scrcpy.exe
			Case "wifi on":
				Run, C:\Windows\System32\netsh.exe wlan connect name="wifi 2"
			Case "wifi off":
				Run, C:\Windows\System32\netsh.exe wlan disconnect
		; Case "sndcpy":
			Case "nocon":
				Run, E:\scrcpy-win64-v1.16\scrcpy-noconsole.exe
		; folders
			; drives
				Case "c":
					Run, C:		
				Case "d":
					Run, D:		
				Case "e":
					Run, E:		
				Case "f":
					Run, F:
				Case "g":
					Run, G:
				Case "h":
					Run, H:		
				Case "i":
					Run, I:
			; libraries
				Case "animes":
					Run, H:\Animes
				Case "lives":
					Run, H:\Lives
				Case "music":
					Run, H:\Music
				Case "games":
					Run, F:\Games
			; misc
				Case "Downloads":
					Run G:\Windows data\Downloads
				Case "Documents":
					Run C:\Users\Clyde.CLYDE-TUFX570\Documents
				Case "class":
					Run D:\class trash\quarantine
				Case "git repos":
					Run D:\GitHub Repositories
		; programs
			;generic
				Case "firefox":
					if WinExist("ahk_class MozillaWindowClass")
					{
						if WinActive("ahk_exe firefox.exe")
							Send, ^t
						else
							WinActivate ; Use the window found by WinExist.
					}
					else
						Run C:\Program Files\Mozilla Firefox\firefox.exe
				Case "discord":
					Run C:\Users\Clyde.CLYDE-TUFX570\AppData\Local\Discord\Update.exe
				Case "vlc":
					Run C:\Program Files\VideoLAN\VLC\vlc.exe
				Case "obs":
					Run, C:\Users\Public\Desktop\OBS Studio.lnk
				Case "nicehash":
					Run https://www.nicehash.com
		; Case "iriun":
			; documents
				Case "word":
					Run C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE
				Case "excel":
					Run C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE
				Case "ppt":
					Run C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE
			; editing, etc
				Case "photoshop":
					Run C:\Program Files\Adobe\Adobe Photoshop 2020\photoshop.exe
				Case "premiere":
					Run C:\Program Files\Adobe\Adobe Premiere Pro 2020\Adobe Premiere Pro.exe
		; Case "after effects", "ae":
		; Case "blender":
			; game launchers
				Case "steam":
					Run C:\Program Files (x86)\Steam\steam.exe
				Case "epic":
					Run C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe
				Case "gog":
					Run C:\Program Files (x86)\GOG Galaxy\GalaxyClient.exe
			; games
				Case "ppsspp":
					Run C:\Program Files\PPSSPP\PPSSPPWindows64.exe
				Case "nester":
					Run F:\emulators\nester\nester.exe
				Case "rpcs3":
					Run F:\emulators\rpcs3-v0.0.17-12655-1cdb2c6a_win64\rpcs3.exe
				Case "epsxe":
					Run F:\emulators\ePSXe205\ePSXe.exe
				Case "aomx":
					Run C:\Program Files (x86)\Microsoft Games\Age of Mythology\aomx.exe -noIntroCinematic
			; code related
				Case "vscode":
					Run C:\Users\Clyde.CLYDE-TUFX570\AppData\Local\Programs\Microsoft VS Code\Code.exe
				Case "github desk":
					Run C:\Users\Clyde.CLYDE-TUFX570\AppData\Local\GitHubDesktop\GitHubDesktop.exe
		; Case "rstudio":
		 	; Run C:\Program Files\RStudio\bin\rstudio.exe
		; Case "devc":
		; websites
			; generic
				Case "rav", "ravelry":
					Run https://www.ravelry.com
				Case "translate":
					Run https://translate.google.com/
				Case "pcp", "pcpartpicker":
					Run https://pcpartpicker.com/
			; weeb
				Case "nutaku":
					Run www.nutaku.net/games/crush-crush/play/
				Case "mal", "myanimelist":
					Run https://www.myanimelist.net
				Case "nyaa":
					Run https://nyaa.si/
			; social networking
				Case "messenger":
					Run https://www.messenger.com
				Case "fb", "facebook":
					Run https://www.facebook.com
				Case "reddit":
					Run https://www.reddit.com/
		; Case "twitter":
		; Case "insta":
			; code related
				Case "github":
					Run https://github.com/
				Case "phpmyadmin", "pma":
					Run http://localhost/phpmyadmin/
		; Case "htdocs":
			; personal
				Case "mail 0":
					Run, https://mail.google.com/mail/u/0
				Case "drive 0":
					Run, https://drive.google.com/drive/u/0
				Case "docs 0":
					Run https://docs.google.com/document/u/0/
				Case "sheets 0":
					Run https://docs.google.com/spreadsheets/u/0/
				Case "slides 0":
					Run https://docs.google.com/presentation/u/0/
			; school related
				Case "mail 1":
					Run, https://mail.google.com/mail/u/1
				Case "drive 1":
					Run, https://drive.google.com/drive/u/1
				Case "canvas":
					Run https://usc.instructure.com/
				Case "docs 1":
					Run https://docs.google.com/document/u/1
				Case "sheets 1":
					Run https://docs.google.com/spreadsheets/u/1/
				Case "slides 1":
					Run https://docs.google.com/presentation/u/1/
		; Case "canva":
			; vid sites
				Case "yt", "youtube":
					Run https://www.youtube.com
				Case "animekisa", "ak":
					Run https://www.animekisa.tv
				Case "netflix":
					Run https://www.netflix.com
				Case "plex":
					Run http://127.0.0.1:32400/web/index.html#!/
		; Case "nnd":
			; online shopping
				Case "shopee":
					Run https://www.shopee.ph
				Case "lazada", "laz":
					Run https://www.lazada.com.ph
				Case "amazon":
					Run https://www.amazon.com
				Case "newegg":
					Run, https://www.newegg.com

		default:
			MsgBox, You entered "%x%", key not assigned.
			Return
	}
}

Codist(x)
{
    switch x{
		Case "php":
			mode:="php"
			MsgBox, mode change "%mode%"
		; Case "nodejs":
			; mode:="nodejs"
			; MsgBox, mode change "%mode%"
        ;sites, programs
            Case "bootstrap":
                Run, https://getbootstrap.com/docs/5.1/components/accordion/
            Case "w3", "w3schools":
                Run, https://www.w3schools.com/
        ;php codes

        ;nodeJS

        ;mysql

		;html+bootstrap
			Case "html": ;+NAVBAR
				Send, {Text}<!DOCTYPE html>
				Send, {Enter}<html lang="en">{Enter}
				Send, <head>{Enter}
				Send, <title>Document</title>{enter}
				Send, <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">{enter}
				Send, </head>{enter}<body>{enter}{enter}</body>{enter}</html>
				Send, {Up 2}
				;navbar section
				Send, <nav class="navbar navbar-expand-lg navbar-light bg-light">{Enter}
				Send, <div class="container-fluid">{Enter}
				Send, <a class="navbar-brand" href="#">Navbar</a>{Enter}
				Send, <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">{Enter}
				Send, <span class="navbar-toggler-icon"></span>{Enter}
				Send, </button>{Enter}<div class="collapse navbar-collapse" id="navbarSupportedContent">{Enter}
				Send, <ul class="navbar-nav me-auto mb-2 mb-lg-0">{Enter}
				Send, <li class="nav-item">{Enter}
				Send, <a class="nav-link active" aria-current="page" href="#">Home</a>{Enter}
				Send, </li>{Enter}</ul>{Enter}
				Send, {Text}<!-- add li -->{Enter}
				Send, <form class="d-flex">{Enter}
				Send, <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">{Enter}
				Send, <button class="btn btn-outline-success" type="submit">Search</button>{Enter}
				Send, </form>{Enter}</div>{Enter}</div>{Enter}</nav>
				;fix indents
				Sleep 2500
				Send, ^a
				Click, 340 130 Right
				Sleep 1500
				Click, 454 337
				Sleep 1500
				Click
				;move to head\title
				Sleep 1500
				Send, {PgUp 2}
				Sleep 500
				Send {Home}{Down 4}{End}{Left 8}{ShiftDown}{Left 8}{ShiftUp}
		;bootstrap

		default:
			MsgBox, You entered "%x%", key not assigned; mode "%mode%".
			Return
    }
	; mode:="false"
}

Magic(x)
{
    switch x
    {
        Case "1":
            ; Send {Enter}{Tab}Runners(""){Left 2}
            ; Send {End}{Left 6}{Shift Down}{Left 3}{Shift Up}E{Enter}
            ; Send {}},{Enter}{{}{Del 5}{end}
            ; Send {Down}{BS}{Del}{Space}"
			MsgBox, MAgic 1
        Case "2":
			; lastKeyboardKey := A_PriorKey
			; MsgBox, "%lastKeyboardKey%"
			MsgBox, MAgic  2
		default:
			MsgBox, You entered "%x%", key not assigned
			Return
    }
}