##
## Makefile
##
## Licensed under MIT License

# PREFIX is environment variable, but if it is not set, then set default value
ifeq ($(PREFIX),)
    PREFIX := /usr/bin/
endif

all:
	\cp dmesg-events-listener /usr/bin
	\cp journald-events-listener /usr/bin/
	\cp dmesg-events-listener.desktop /usr/share/applications/
	\cp journald-events-listener.desktop /usr/share/applications/
	\cp journald-events-listener.png /usr/share/icons/hicolor/128x128/
	\xdg-icon-resource install /usr/share/icons/hicolor/128x128/journald-events-listener.png --size 128
	\xdg-icon-resource install /usr/share/icons/hicolor/128x128/plv.png  --size 128
	\wget https://github.com/gcala/pacmanlogviewer/raw/master/images/128x128/plv.png -O /usr/share/icons/hicolor/128x128/plv.png &>/dev/null

install:
	\cp dmesg-events-listener /usr/bin
	\cp journald-events-listener /usr/bin/
	\cp dmesg-events-listener.desktop /usr/share/applications/
	\cp journald-events-listener.desktop /usr/share/applications/
	\cp journald-events-listener.png /usr/share/icons/hicolor/128x128/
	\xdg-icon-resource install /usr/share/icons/hicolor/128x128/journald-events-listener.png --size 128
	\xdg-icon-resource install /usr/share/icons/hicolor/128x128/plv.png  --size 128
	\wget https://github.com/gcala/pacmanlogviewer/raw/master/images/128x128/plv.png -O /usr/share/icons/hicolor/128x128/plv.png &>/dev/null

uninstall:
	\rm  /usr/bin/dmesg-events-listener
	\rm  /usr/bin/journald-events-listener
	\rm  /usr/share/applications/dmesg-events-listener.desktop
	\rm  /usr/share/applications/journald-events-listener.desktop 
	\rm  /usr/share/icons/hicolor/128x128/journald-events-listener.png
	\rm  /usr/share/icons/hicolor/128x128/plv.png 
