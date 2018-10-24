FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

require recipes-bsp/u-boot/u-boot-mender.inc

# Included modified version of auto configure patch below
MENDER_UBOOT_AUTO_CONFIGURE = "0"

SRC_URI += "file://0001-env-tool-add-command-line-option-to-input-lockfile-p.patch"
SRC_URI += "file://0003-tegra-Integration-of-Mender-boot-code-into-U-Boot.patch"
SRC_URI += "file://0010-tegra-mender-auto-configured-modified.patch"
SRC_URI_remove = "file://0003-Integration-of-Mender-boot-code-into-U-Boot.patch"
SRC_URI_remove = "file://0006-env-Kconfig-Add-descriptions-so-environment-options-.patch"
# Is not used for normal build but causes errors with devtool if not added here
SRC_URI_remove = "file://0007-distro_bootcmd-Switch-bootefi-to-use-loadaddr-by-def.patch"
