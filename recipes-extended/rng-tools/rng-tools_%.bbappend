FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://init"

do_install_append() {
	install -Dm 0755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/rng-tools
}
