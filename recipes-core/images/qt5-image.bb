SUMMARY = "A Qt5 development image"
HOMEPAGE = "http://www.jumpnowtek.com"

require console-image.bb

#inherit populate_sdk_qt5

QT_DEV_TOOLS = " \
qtserialport-dev \
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
qtscript \
qtlocation-plugins \
qtlocation-qmlplugins \
qtquickcontrols-qmlplugins \
qtxmlpatterns-dev \
qtxmlpatterns-mkspecs \
qttranslations-qtxmlpatterns \
qtquickcontrols2 \
qtquickcontrols2-dev \
qtquickcontrols2-mkspecs \
qtvirtualkeyboard \
qtvirtualkeyboard-dev \
qtxmlpatterns \
qtxmlpatterns-dev \
qtxmlpatterns-mkspecs \ 
qtcharts \
"

QT_TOOLS = " \
    qtbase \
    qtbase-plugins \
    qtserialport \
"

FONTS = " \
    fontconfig \
    fontconfig-utils \
    ttf-bitstream-vera \
"

TSLIB = " \
    tslib \
    tslib-calibrate \
    tslib-conf \
"

IMAGE_INSTALL += " \
    ${FONTS} \
    ${QT_DEV_TOOLS} \
    ${QT_TOOLS} \
    ${TSLIB} \
"


#my_postprocess_function() {
	
#   /home/nbv2/SmartHome
#}

#ROOTFS_POSTPROCESS_COMMAND_append = " \
#  my_postprocess_function; \
#"





export IMAGE_BASENAME = "qt5-image"
