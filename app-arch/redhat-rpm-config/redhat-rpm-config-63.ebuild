# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit rpm

DESCRIPTION=""
HOMEPAGE=""
# Note: We are only downloading the redhat-rpm-config part of the package, not
# the kernel-rpm-macros subpackage.
SRC_URI="https://kojipkgs.fedoraproject.org//packages/redhat-rpm-config/${PV}/1.fc26/noarch/redhat-rpm-config-${PV}-1.fc26.noarch.rpm"

LICENSE="GPL+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
	${DEPEND}
	app-arch/rpm[fedora]
"

# The RPM eclass seems to unpack to the wrong directory
#S="${WORKDIR}"

src_unpack() {
	rpm_unpack ${A}
}

src_install() {
    cp -R -- "${S}"/* "${D}"
}
