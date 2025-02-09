FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

EXTRADEPS = ""
EXTRADEPS_tegra = "${@tegra-boot-tools-earlyboot if d.getVar('PREFERRED_PROVIDER_virtual/bootloader').startswith('cboot') else ''}"
EXTRADEPS_tegra210 = ""
RDEPENDS_${PN} += "${EXTRADEPS}"
