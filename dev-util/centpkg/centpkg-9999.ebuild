# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{2_7,3_4} )

inherit centos-git distutils-r1

DESCRIPTION="CentOS package maintainance utility"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="+forked"

COMMON_DEPEND="
	${PYTHON_DEPS}
	dev-util/rpkg[${PYTHON_USEDEP}]
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
	${COMMON_DEPEND}
"

src_unpack() {
	use forked && EGIT_REPO_URI="https://github.com/pavlix/${PN}.git"

	git-r3_src_unpack
}
