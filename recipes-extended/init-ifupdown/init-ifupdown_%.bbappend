FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

RDEPENDS_${PN} += " \
bash \
qtbase \
qtbase-mkspecs \
qtbase-tools \
qtserialport-mkspecs \
qtdeclarative \
qtdeclarative-tools \
qtdeclarative-mkspecs \
qtdeclarative-qmlplugins \
qtmultimedia \
qtmultimedia-plugins \
qtsvg \
qtsvg-plugins \
qtsensors \
qtimageformats-plugins \
qtsystems \
qtsystems-tools \
qtsystems-qmlplugins \
qtscript \
qtconnectivity-mkspecs \
qtconnectivity-qmlplugins \
qtlocation-plugins \
qtlocation-qmlplugins \
qtquickcontrols-qmlplugins \
qtxmlpatterns-mkspecs \
qttranslations-qtxmlpatterns \
qtquickcontrols2 \
qtquickcontrols2-mkspecs \
qtvirtualkeyboard \
qtxmlpatterns \
qtxmlpatterns-mkspecs \ 
qtcharts \
libmodbus \
"

SRC_URI += "file://interfaces"
SRC_URI += "file://init_startup.sh"
SRC_URI += "file://app_mng.sh"
SRC_URI += "file://aim_master"
SRC_URI += "file://root"
SRC_URI += "file://swapfile"
SRC_URI += "file://backlight"
SRC_URI += "file://buzzer"


do_install_append() {
	install -m 0644 ${WORKDIR}/interfaces ${D}${sysconfdir}/network/interfaces
	install -d ${D}${bindir}
	install -m 777 ${WORKDIR}/init_startup.sh ${D}${bindir}/init_startup.sh
	install -m 777 ${WORKDIR}/app_mng.sh ${D}${bindir}/app_mng.sh
	install -m 777 ${WORKDIR}/aim_master ${D}${bindir}/aim_master
	install -m 777 ${WORKDIR}/swapfile ${D}${bindir}/swapfile
	install -m 777 ${WORKDIR}/backlight ${D}${bindir}/backlight
	install -m 777 ${WORKDIR}/buzzer ${D}${bindir}/buzzer
}
