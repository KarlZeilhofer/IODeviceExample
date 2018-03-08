# IODeviceExample
This repository contains the code for a RevPi DIO module. It can be used as origin for own IO modules.

## ARM Toolchain
Use the following link to download the gnu compiler to build the project for several operating system.
https://developer.arm.com/open-source/gnu-toolchain/gnu-rm

Please change the definition of the variable TOOLCHAIN_PATH in the makefile to the location of
your compiler.

Use 'make' to build the binary file. When you call make the first time you will see some warnings like this:
makefile:105: bsp/sw/bsp/bspError.d: Datei oder Verzeichnis nicht gefunden
You can ignore this. It is displayed because the .d-files cannot be found but they are generated immediately.

## Debug Interfaces
### Power Debug
Kunbus uses a 'Power Debug Interface USB 3' from Lauterbach (lauterbach.com) to download the elf-file to the
arm processor. But other debuggers can be used also.


### Balck Magic Probe
Team14 uses the `Black Magic Probe` as a SWD programming and debugging
interface. 


** Usage: **
* Connect the 10-pin header of the Black Magic Probe to the Makerboard
* Power up the Makerboard externally with 24V
* set your USB serial device in `.gdbinit` (e.g. `/dev/ttyACM0`)
* run `make flash` within a terminal
  This will bring up a GNU Debugger session, that falshes the current 
  firmware and halts at `main()`. 
  Hit `c` and return to continue the programm.

## Connection to the RevPi Core
* configure with Pictory a DIO module
* save the config (File -> Save)
* reset the driver (Pictory: Tools -> Reset Driver)
* both lower LEDs should now light green

