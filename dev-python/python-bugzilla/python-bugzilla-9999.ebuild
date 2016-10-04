# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python2_7 )
GITHUB_USER="${PN}"

inherit fedora-github distutils-r1
[ "${PV}" = 9999 ] && inherit git-r3

DESCRIPTION="Python library for interacting with Bugzilla"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	dev-python/setuptools
	|| ( dev-python/python-magic sys-apps/file[python] )
"

src_prepare() {
    # Some RH tools use internals despite this trick
	sed -i '/Clear all other locals/,$ d' bugzilla/__init__.py
}
