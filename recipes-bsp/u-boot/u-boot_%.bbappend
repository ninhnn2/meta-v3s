FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://boot.cmd"

DEPENDS += "v3s-u-boot-scr"
