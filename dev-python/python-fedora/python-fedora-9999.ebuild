# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python2_7 )
GITHUB_USER=fedora-infra

inherit fedora-github distutils-r1

DESCRIPTION="Python modules for talking to Fedora Infrastructure Services"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	dev-python/python-bugzilla
	dev-python/bunch
	dev-python/cherrypy
	dev-python/decorator
	dev-python/feedparser
	dev-python/kitchen
	dev-python/mako
	dev-python/pycurl
	dev-python/repoze-who-friendlyform
	dev-python/simplejson
	dev-python/sqlalchemy
"
DEPEND="
	${COMMON_DEPEND}
	dev-python/Babel
	dev-python/nose
	dev-python/paver
	dev-python/setuptools
	dev-python/sphinx
"
RDEPEND="
	${COMMON_DEPEND}
	dev-python/lockfile
	dev-python/urllib3
"

src_prepare() {
	rm -rf tests
}
