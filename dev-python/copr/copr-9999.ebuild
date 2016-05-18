# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )
GITHUB_USER=fedora-copr

inherit fedora-github distutils-r1

DESCRIPTION="An alternative build system for the Fedora project"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

COMMON_DEPEND="
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"

S="${WORKDIR}/${P}/python"
