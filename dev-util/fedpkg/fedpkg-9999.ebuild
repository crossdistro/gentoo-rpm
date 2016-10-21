# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-pagure distutils-r1

DESCRIPTION="Fedora utility for working with dist-git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

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
	dev-python/kitchen[${PYTHON_USEDEP}]
	dev-python/munch[${PYTHON_USEDEP}]
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/python-fedora[${PYTHON_USEDEP}]
	dev-util/koji[${PYTHON_USEDEP}]
	dev-util/packagedb-cli[${PYTHON_USEDEP}]
"
# dev-python/offtrac[${PYTHON_USEDEP}]
