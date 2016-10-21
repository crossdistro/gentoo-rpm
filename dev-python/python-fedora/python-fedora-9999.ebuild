# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_4} )
GITHUB_USER=fedora-infra

inherit fedora-github distutils-r1

DESCRIPTION="Python modules for talking to Fedora Infrastructure Services"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/Babel[${PYTHON_USEDEP}]
	dev-python/nose[${PYTHON_USEDEP}]
	dev-python/paver[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
"
RDEPEND="
	${COMMON_DEPEND}
	dev-python/python-bugzilla[${PYTHON_USEDEP}]
	dev-python/bunch[${PYTHON_USEDEP}]
	dev-python/cherrypy[${PYTHON_USEDEP}]
	dev-python/decorator[${PYTHON_USEDEP}]
	dev-python/feedparser[${PYTHON_USEDEP}]
	dev-python/kitchen[${PYTHON_USEDEP}]
	dev-python/mako[${PYTHON_USEDEP}]
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/simplejson[${PYTHON_USEDEP}]
	dev-python/sqlalchemy[${PYTHON_USEDEP}]
	dev-python/lockfile[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
"
# dev-python/repoze-who-friendlyform[${PYTHON_USEDEP}]

src_prepare() {
	rm -rf tests
}
