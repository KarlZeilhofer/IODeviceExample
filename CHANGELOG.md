Changelog for the Revolution Pi - DIO Example Firmware
======================================================


## 2018-03-08
* changed flash address from 0x0000 0000 to 0x0800 0000
* fixed that address also in FlashDriver.c
* Add some TODO comments
* add some comments about the sniff signals
* add .gdbinit for direct firmware programming via the Black Macic Probe
* add run script for gdbgui, which provides a UI in a webbrowser
* configure as DIO-14, if no config-resistors are placed
* updated README.md
* skip the SPI io handling, since they are not available on the Makerboard
* change commit message


## 2018-02-06
* conversion to UTF8 encoding of all source files
