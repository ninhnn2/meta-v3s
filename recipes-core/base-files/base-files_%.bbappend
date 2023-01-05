DESCRIPTION = "Allows to customize the fstab"
PR = "r0"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
   file://fstab \
"

do_install_append(){
   install -m 0644 ${WORKDIR}/fstab ${D}${sysconfdir}/
}
