all: dwm dwmblocks dmenu st slock
	
dwm:
	make -C dwm

dwmblocks:
	make -C dwmblocks-async

dmenu:
	make -C dmenu

st:
	make -C st

slock:
	make -C slock

install: all
	mkdir -p $(DESTDIR)/usr/share/backgrounds $(DESTDIR)/usr/bin
	install -m 0755 dwm/dwm dwmblocks-async/dwmblocks dmenu/dmenu st/st slock/slock $(DESTDIR)/usr/bin/
	install -m 0755 dwmblocks-async/scripts/* /usr/bin/
	cp -rf rootfs/. $(DESTDIR)/

clean:
	make -C dwm clean
	make -C dwmblocks-async clean
	make -C st clean
	make -C slock clean

uninstall:
	rm $(DESTDIR)/usr/bin/dwm $(DESTDIR)/usr/bin/dwmblocks $(DESTDIR)/usr/bin/st $(DESTDIR)/usr/bin/slock
	rm $(DESTDIR)/usr/share/backgrounds/wallpaper* # be careful with this line
	find rootfs -exec rm -rf $(DESTDIR)/{} \;

.PHONY: all dwm dwmblocks dmenu st slock install clean uninstall
