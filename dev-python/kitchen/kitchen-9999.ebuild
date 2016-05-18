# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python2_7 )

inherit fedora-fedorahosted distutils-r1
[ "${PV}" = 9999 ] && inherit bzr

DESCRIPTION="Small, useful pieces of code to make python coding easier"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	dev-python/chardet
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/nose
	dev-python/sphinx
"
RDEPEND="
	${COMMON_DEPEND}
"
