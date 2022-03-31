FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI:append = " file://isp-imx-basler/"
RDEPENDS:${PN} = "bash"

do_install:append() {
    #install our camera files on top
    cp -r ${WORKDIR}/isp-imx-basler/* ${D}/
}
