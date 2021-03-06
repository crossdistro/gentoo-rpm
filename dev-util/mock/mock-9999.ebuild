# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/mock/mock-1.0.3.ebuild,v 1.3 2012/06/07 21:35:09 zmedico Exp $

EAPI=6
GITHUB_USER="rpm-software-management"
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-github autotools python-single-r1 eutils user

DESCRIPTION="Build RPM packages in chroots"
HOMEPAGE="http://fedoraproject.org/wiki/Projects/Mock"
[ "${PV}" = 9999 ] || SRC_URI="https://fedorahosted.org/mock/attachment/wiki/MockTarballs/mock-${PV}.tar.gz?format=raw -> mock-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
[ "${PV}" = 9999 ] || KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
	dev-python/decoratortools[${PYTHON_USEDEP}]
	dev-util/tito[${PYTHON_USEDEP}]
	sys-apps/usermode[${PYTHON_USEDEP}]
	sys-apps/yum[${PYTHON_USEDEP}]
"

src_prepare() {
	default

	sed -i 's/^#AC_INIT(/AC_INIT(/' configure.ac

	#eautoreconf
}

src_install() {
	default

	dosym consolehelper /usr/bin/mock || die

	doemptydir /var/cache/mock
	doemptydir /var/lib/mock
}

pkg_postinst() {
	enewgroup mock
}

doemptydir() {
	dodir $1 || die
	keepdir $1 || die
}

