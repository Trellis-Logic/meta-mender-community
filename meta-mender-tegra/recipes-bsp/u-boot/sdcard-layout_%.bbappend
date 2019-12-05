FILESEXTRAPATHS_prepend := "${THISDIR}:"
SRC_URI = "file://sdcard-layout-mender.in"

RDEPENDS_${PN} += "gptfdisk"

do_install_prepend() {
	cp ${S}/sdcard-layout-mender.in ${S}/sdcard-layout.in
}
