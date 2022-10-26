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

svkbd:
	make -C svkbd

install: all
	mkdir -p /usr/local/bin /usr/local/src/sigma-deb /usr/local/share/man/man1
	make -C dwm install
	make -C dwmblocks-async install
	make -C dmenu install
	make -C st install
	make -C slock install
	make -C svkbd install
	install -m 0644 sigma-linux.1 /usr/local/share/man/man1/
	install -m 0755 dwmblocks-async/scripts/* /usr/local/bin/
	tar -hcJf /usr/local/src/sigma-deb/sigma-deb.tar.xz .

clean:
	make -C dwm clean
	make -C dwmblocks-async clean
	make -C dmenu clean
	make -C st clean
	make -C slock clean
	make -C svkbd clean

uninstall:
	make -C dwm uninstall
	make -C dwmblocks-async uninstall
	make -C dmenu uninstall
	make -C st uninstall
	make -C slock uninstall
	make -C svkbd uninstall
	rm -rf /usr/local/src/sigma-deb

.PHONY: all dwm dwmblocks dmenu st slock svkbd install clean uninstall
