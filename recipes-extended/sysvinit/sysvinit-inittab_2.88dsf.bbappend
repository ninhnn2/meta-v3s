FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://inittab"


do_install_append() {
	echo "id:5:initdefault:"													> ${D}${sysconfdir}/inittab
	echo "si::sysinit:/etc/init.d/rcS"												>> ${D}${sysconfdir}/inittab
	echo "~~:S:wait:/sbin/sulogin"												>> ${D}${sysconfdir}/inittab
	echo "l0:0:wait:/etc/init.d/rc 0"												>> ${D}${sysconfdir}/inittab
	echo "l1:1:wait:/etc/init.d/rc 1"												>> ${D}${sysconfdir}/inittab
	echo "l2:2:wait:/etc/init.d/rc 2"												>> ${D}${sysconfdir}/inittab
	echo "l3:3:wait:/etc/init.d/rc 3"												>> ${D}${sysconfdir}/inittab
	echo "l4:4:wait:/etc/init.d/rc 4"												>> ${D}${sysconfdir}/inittab
	echo "l5:5:wait:/etc/init.d/rc 5"												>> ${D}${sysconfdir}/inittab
	echo "l6:6:wait:/etc/init.d/rc 6"												>> ${D}${sysconfdir}/inittab
	echo "z6:6:respawn:/sbin/sulogin"												>> ${D}${sysconfdir}/inittab
	echo "S0:12345:respawn:/bin/start_getty 115200 ttyS0 vt102"									>> ${D}${sysconfdir}/inittab
	echo "1:12345:respawn:/sbin/mingetty --autologin aim --noclear tty1"								>> ${D}${sysconfdir}/inittab
}
