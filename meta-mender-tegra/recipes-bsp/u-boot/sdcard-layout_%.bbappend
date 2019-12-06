FILESEXTRAPATHS_prepend := "${THISDIR}:"
SRC_URI = "file://sdcard-layout-mender.in"

do_install_prepend() {
	cp ${S}/sdcard-layout-mender.in ${S}/sdcard-layout.in
	sed -i 's@data\.blob@'"${DEPLOY_DIR_IMAGE}/data.blob"'@g' ${S}/sdcard-layout.in
	dd if=/dev/zero of=${DEPLOY_DIR_IMAGE}/data.blob bs=1024 count=2097152
	/sbin/mkfs.ext4 ${DEPLOY_DIR_IMAGE}/data.blob
}
