FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://root"


do_install_append() {
	install -d ${D}/var/spool/cron
	install -m 0644 ${WORKDIR}/root ${D}/var/spool/cron/root
}
