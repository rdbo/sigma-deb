git submodule update --remote --merge
cd src
rm dwm dwmblocks-async dmenu st slock images
ln -s ../sigma-dwm ./dwm
ln -s ../sigma-dwmblocks-async ./dwmblocks-async
ln -s ../sigma-dmenu ./dmenu
ln -s ../sigma-slock ./slock
ln -s ../rootfs ./rootfs
