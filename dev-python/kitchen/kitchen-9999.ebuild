# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
GITHUB_USER=fedora-infra
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-github distutils-r1

DESCRIPTION="Small, useful pieces of code to make python coding easier"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
	dev-python/chardet[${PYTHON_USEDEP}]
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/nose[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
"
RDEPEND="
	${COMMON_DEPEND}
"
