EAPI="5"
PYTHON_COMPAT=( python2_7 )

inherit fedora-fedorahosted distutils-r1 git-r3

DESCRIPTION="Trac xmlrpc library"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
