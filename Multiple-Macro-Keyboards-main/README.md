# Multiple-Macro-Keyboards
Use extra keyboards as macro keyboards

Tom Scott Emoji Keyboard: https://www.youtube.com/watch?v=lIFE7h3m40U

Original Code from Taran: https://github.com/TaranVH/2nd-keyboard


LuaMacros:
1. Download and install LuaMacros and AutoHokey
2. Open LuaMacros then run multikeybs.lua and find your macro keyboard's device ID. The line "lmc_print_devices()" is responsible for this. Based on my experience, my 2 USB keyboard have their IDs beginning in "ID_"
3. uncomment (remove the "--") from the line "--lmc_device_set_name('MACROS1', "NP0303");" and replace NP0303 to your keyboard's ID
4. comment out (add "--" at the start of the line) the line "lmc_assign_keyboard('MACROS1')"
5. Replace the paths in the "lmc spawn" line to where AutoHokey is installed and where the multikeys.ahk file is stored. I suggest commenting out the "lmc_minimize" lines for ease in testing
6. Replace the path in the "local file" line to where you want the temporary file to be stored. 
7. Test the macro keyboard if it works, LuaMacros should show what you last pressed.


If you want multiple macro keyboards:
1. add more "lmc_device_set_name('MACROS2', "ID_0002")" lines with the names being unique
2. add more "lmc_set_handler('MACROS1', function(button, direction)" code blocks
3. replace the keyboard name and the keyboard numbers in the "sendToAHK" line and the "print('Your key ID number is:   (1)' .. button)" line
4. Don't forget to test


AutoHotkey:
1. Now open multikeybs.ahk in your preferred text editor.
2. Replace the path in the "FileRead" line,
3. Replace the code within the switch case line to what you want to do. TaranVH provides an if-else version if thats what you prefer. Ignore that all of them use a Runner function, that just what I did to separate the keypress and the macro.
4. Good Luck

To save time making Autohotkey switch case multiple keyboard cases, included is the "ahk multi keyb maker" files.
Run the exe file and input your stuff.
The incuded txt file is a sample output.
If ever the exe doesnt run, there is the source code C file for you to compile 
:)
