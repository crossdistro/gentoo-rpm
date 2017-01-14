# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
GITHUB_USER=projectatomic
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-github distutils-r1

DESCRIPTION="Python module and command line client for OpenShift Build Service"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/pytest-runner[${PYTHON_USEDEP}]
"
RDEPEND="
	${COMMON_DEPEND}
	dev-python/dockerfile-parse[${PYTHON_USEDEP}]
"
