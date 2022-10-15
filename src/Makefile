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
	mkdir -p /usr/share/backgrounds /usr/local/bin /usr/local/src /usr/local/share/man/man1
	make -C dwm install
	make -C dwmblocks-async install
	make -C dmenu install
	make -C st install
	make -C slock install
	install -m 0644 sigma-linux.1 /usr/local/share/man/man1/
	install -m 0755 dwmblocks-async/scripts/* /usr/local/bin/
	cp -rf rootfs/. /
	cp -rf . /usr/local/src/dev

clean:
	make -C dwm clean
	make -C dwmblocks-async clean
	make -C dmenu clean
	make -C st clean
	make -C slock clean

uninstall:
	make -C dwm uninstall
	make -C dwmblocks-async uninstall
	make -C dmenu uninstall
	make -C st uninstall
	make -C slock uninstall
	rm /usr/share/backgrounds/wallpaper* # be careful with this line
	rm -rf /usr/local/src/dev
	find rootfs -exec rm -rf /{} \;

.PHONY: all dwm dwmblocks dmenu st slock install clean uninstall
