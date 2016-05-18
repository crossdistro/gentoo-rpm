# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python2_7 )

inherit fedora-pagure distutils-r1
[ ${PV} = 9999 ] && inherit git-r3

DESCRIPTION="Fedora utility for working with dist-git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	dev-util/rpkg
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/setuptools
"
RDEPEND="
	${COMMON_DEPEND}
	dev-python/kitchen
	dev-python/munch
	dev-python/offtrac
	dev-python/pycurl
	dev-python/python-fedora
	dev-util/koji
	dev-util/packagedb-cli
"
