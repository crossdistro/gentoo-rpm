# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/libnl/libnl-3.2.9999.ebuild,v 1.1 2013/10/23 10:58:30 jer Exp $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} )
GITHUB_USER=svinota

inherit fedora-github distutils-r1

DESCRIPTION="Python netlink and Linux network configuration library."
LICENSE="GPLv2+"

SLOT="0"

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"

src_prepare() {
	make setup.py
}
