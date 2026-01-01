FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:flash-l4t-234-nvme-rootfs-ab-mender-customizations = " \
    file://flash_l4t_t234_nvme_rootfs_ab.xml \
"


PARTITION_FILE_EXTERNAL:flash-l4t-234-nvme-rootfs-ab-mender-customizations = "${WORKDIR}/flash_l4t_t234_nvme_rootfs_ab.xml"
