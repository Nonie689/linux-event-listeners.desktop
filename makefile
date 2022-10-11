##
## Makefile
##
## Licensed under MIT License

# PREFIX is environment variable, but if it is not set, then set default value
ifeq ($(PREFIX),)
    PREFIX := /usr/bin/
endif

all:
	\cp dmesg-events-listener.desktop /usr/share/applications/
	\cp journald-events-listener.desktop /usr/share/applications/
	\cp journald-even-listener.png /usr/share/icons/hicolor/128x128/ &> /dev/null
	\wget https://github.com/gcala/pacmanlogviewer/raw/master/images/128x128/plv.png -O /usr/share/icons/hicolor/128x128/plv.png &>/dev/null

install:
	\cp dmesg-events-listener.desktop /usr/share/applications/
	\cp journald-events-listener.desktop /usr/share/applications/
	\cp journald-even-listener.png /usr/share/icons/hicolor/128x128/ &> /dev/null
	\wget https://github.com/gcala/pacmanlogviewer/raw/master/images/128x128/plv.png -O /usr/share/icons/hicolor/128x128/plv.png &>/dev/null

uninstall:
	\rm  /usr/share/applications/dmesg-events-listener.desktop
	\rm  /usr/share/applications/journald-events-listener.desktop 
	\rm  /usr/share/icons/hicolor/128x128/journald-even-listener.png
	\rm  /usr/share/icons/hicolor/128x128/plv.png 
