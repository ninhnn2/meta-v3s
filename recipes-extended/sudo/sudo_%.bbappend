FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

do_install_append() {
    echo "aim ALL=(ALL) ALL" > ${D}${sysconfdir}/sudoers.d/001_first
    echo "aim ALL=(ALL) NOPASSWD:ALL" >> ${D}${sysconfdir}/sudoers.d/001_first
}
