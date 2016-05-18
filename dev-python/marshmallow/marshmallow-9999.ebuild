# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )
GITHUB_USER=marshmallow-code

inherit fedora-github distutils-r1

DESCRIPTION="An ORM/ODM/framework-agnostic library for converting complex datatypes, such as objects, to and from native Python datatypes."

LICENSE="MIT"
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
