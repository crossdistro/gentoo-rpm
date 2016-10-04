# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-pagure distutils-r1

DESCRIPTION="Utility for interacting with rpm+git packaging systems"

LICENSE="GPL-2 LGPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	dev-python/git-python
	dev-python/kitchen
	dev-python/pycurl
	dev-util/koji
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/setuptools
"
RDEPEND="
	${COMMON_DEPEND}
	app-arch/rpm[python]
	dev-util/mock
	net-misc/curl
	net-misc/openssh
"
