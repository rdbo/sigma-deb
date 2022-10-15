all: dwm dwmblocks st slock
	
dwm:
	make -C dwm

dwmblocks:
	make -C dwmblocks-async

st:
	make -C st

slock:
	make -C slock

install: all
	mkdir -p $(DESTDIR)/usr/share/backgrounds $(DESTDIR)/usr/bin
	install -m 0755 dwm/dwm dwmblocks-async/dwmblocks st/st slock/slock $(DESTDIR)/usr/bin/
	install -m 0644 images/wallpaper* $(DESTDIR)/usr/share/backgrounds/

clean:
	make -C dwm clean
	make -C dwmblocks-async clean
	make -C st clean
	make -C slock clean

uninstall:
	rm $(DESTDIR)/usr/bin/dwm $(DESTDIR)/usr/bin/dwmblocks $(DESTDIR)/usr/bin/st $(DESTDIR)/usr/bin/slock
	rm $(DESTDIR)/usr/share/backgrounds/wallpaper* # be careful with this line

.PHONY: all dwm dwmblocks st slock install clean uninstall
