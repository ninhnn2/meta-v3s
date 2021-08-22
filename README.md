# meta-v3s
build yocto for allwiner v3s

![64753283_351381782246681_3984431754520821760_o](https://user-images.githubusercontent.com/41134638/71540022-7fc9cc80-2977-11ea-9965-fe69c4e43d2f.jpg)

### Tutorial

user# cd ~

user# mkdir yocto

user# cd yocto

user# git clone -b zeus git://git.yoctoproject.org/poky.git

user# cd poky

user# git clone -b zeus https://github.com/openembedded/meta-openembedded.git

user# git clone -b zeus https://github.com/meta-qt5/meta-qt5.git

user# git clone -b zeus https://github.com/ninhnn2/meta-v3s.git

user# source oe-init-build-env build-v3s

user# cp ../meta-v3s/conf/example/zeus/local.conf ./conf/

user# cp ../meta-v3s/conf/example/zeus/bblayers.conf ./conf/

user# bitbake qt5-image






