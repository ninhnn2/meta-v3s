SUMMARY = "A console development image with some C/C++ dev tools"
HOMEPAGE = "http://www.jumpnowtek.com"

IMAGE_FEATURES += "package-management"
IMAGE_LINGUAS = "en-us"

inherit image

CORE_OS = " \
    openssh openssh-keygen openssh-sftp-server \
    packagegroup-core-boot \
    tzdata \
"

KERNEL_EXTRA_INSTALL = " \
    kernel-modules \
"

WIFI_SUPPORT = " \
    iw \
    wpa-supplicant \
"

DEV_SDK_INSTALL = " \
    file \
    gettext \
    git \
    ldd \
    strace \
    libmosquittopp1 \
"

DEV_EXTRAS = " \
    ntp \
    ntp-tickadj \
"

EXTRA_TOOLS_INSTALL = " \
    vim \
    cronie \
    procps \
    unzip \
    wget \
    curl \
    openvpn \
    xz \
    zip \
    minicom \
    sudo \
    mingetty \
    iptables \
    opkg \
    libmodbus \
    python3 \
    python3-pip \
"

IMAGE_INSTALL += " \
    ${CORE_OS} \
    ${DEV_SDK_INSTALL} \
    ${DEV_EXTRAS} \
    ${EXTRA_TOOLS_INSTALL} \
    ${KERNEL_EXTRA_INSTALL} \
    ${WIFI_SUPPORT} \
"

set_local_timezone() {
    ln -sf /usr/share/zoneinfo/EST5EDT ${IMAGE_ROOTFS}/etc/localtime
}

disable_bootlogd() {
    echo BOOTLOGD_ENABLE=no > ${IMAGE_ROOTFS}/etc/default/bootlogd
}

ROOTFS_POSTPROCESS_COMMAND += " \
    set_local_timezone ; \
    disable_bootlogd ; \
"

export IMAGE_BASENAME = "console-image"

