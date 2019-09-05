SUMMARY = "A Qt5 development image"
HOMEPAGE = "http://www.jumpnowtek.com"

require console-image.bb

inherit populate_sdk_qt5

QT_DEV_TOOLS = " \
qtbase-dev \
qtbase-mkspecs \
qtbase-tools \
qtserialport-dev \
qtserialport-mkspecs \
qtdeclarative \
qtdeclarative-tools \
qtdeclarative-mkspecs \
qtdeclarative-qmlplugins \
qttranslations-qtdeclarative \
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
qtconnectivity-dev \
qtconnectivity-mkspecs \
qtconnectivity-qmlplugins \
qtlocation-plugins \
qtlocation-qmlplugins \
qtquickcontrols-qmlplugins \
qtxmlpatterns-dev \
qtxmlpatterns-mkspecs \
qttranslations-qtxmlpatterns \
qtquickcontrols2 \
qtquickcontrols2-dev \
qtquickcontrols2-mkspecs \
"

QT_TOOLS = " \
    qtbase \
    qtbase-plugins \
    qtserialport \
    qt5-env \
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
    qcolorcheck \
    qfontchooser \
    qkeytest \
    qshowfonts \
    ${TSLIB} \
    tspress \
"

export IMAGE_BASENAME = "qt5-image"
