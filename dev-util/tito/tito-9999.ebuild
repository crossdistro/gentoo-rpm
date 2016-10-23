# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/libnl/libnl-3.2.9999.ebuild,v 1.1 2013/10/23 10:58:30 jer Exp $

EAPI=6
PYTHON_COMPAT=( python2_7 )
GITHUB_USER=dgoodwin

inherit fedora-github distutils-r1

DESCRIPTION="Tool for managing RPM based projects using git for their source code repository."
LICENSE="GPL-2+"

SLOT="0"

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	dev-python/blessings[${PYTHON_USEDEP}]
	dev-python/pylint[${PYTHON_USEDEP}]
	${COMMON_DEPEND}
"
