do_compile:append:flash-l4t-234-nvme-rootfs-ab-mender-customizations() {
    if [ -e external-flash.xml ]; then
        echo "Fixing up EXT_NUM_SECTORS reference to use NUM_SECTORS for Jetpack 5"
        # The common layer uses "EXT_NUM_SECTORS" for the partition layout which
        # isn't supported on Jetpack 5 scripts.  Replace with NUM_SECTORS when using Jetpack 5
        sed -i \
            -e"s,EXT_NUM_SECTORS,NUM_SECTORS," \
            external-flash.xml
     fi
}
