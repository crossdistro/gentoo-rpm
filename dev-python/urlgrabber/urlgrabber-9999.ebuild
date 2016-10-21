# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_4 )

inherit git-r3 distutils-r1

DESCRIPTION="Python module for downloading files"
HOMEPAGE="http://urlgrabber.baseurl.org"
EGIT_REPO_URI="git://yum.baseurl.org/urlgrabber.git"
[ "${PV}" = 9999 ] || SRC_URI="http://urlgrabber.baseurl.org/download/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ia64 ~ppc ~ppc64 ~x86 ~x86-fbsd"
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	dev-python/pycurl[${PYTHON_USEDEP}]
	${COMMON_DEPEND}
"
