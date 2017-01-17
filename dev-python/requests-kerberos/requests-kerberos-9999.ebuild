# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
GITHUB_USER=requests
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-github distutils-r1

DESCRIPTION=""

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
