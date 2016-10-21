# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python2_7 python3_4 )

inherit fedora-github distutils-r1
[ "${PV}" = 9999 ] && inherit git-r3

DESCRIPTION="Python library for interacting with Bugzilla"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
	${COMMON_DEPEND}
	|| ( dev-python/python-magic[${PYTHON_USEDEP}] sys-apps/file[${PYTHON_USEDEP}] )
"

src_prepare() {
    # Some RH tools use internals despite this trick
	sed -i '/Clear all other locals/,$ d' bugzilla/__init__.py
}
