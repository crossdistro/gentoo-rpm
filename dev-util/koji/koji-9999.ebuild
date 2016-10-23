# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-pagure python-r1 eutils

DESCRIPTION="Build system for the Fedora project"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="+minimal +forked"

COMMON_DEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
	app-arch/rpm[${PYTHON_USEDEP}]
	dev-python/pyopenssl[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/urlgrabber[${PYTHON_USEDEP}]
"
# dev-python/python-krbV[${PYTHON_USEDEP}]
# sys-apps/yum[${PYTHON_USEDEP}]

src_unpack() {
	use forked && EGIT_REPO_URI="https://pagure.io/forks/pavlix/${PN}.git"

	git-r3_src_unpack
}

src_prepare() {
	cp "${FILESDIR}"/koji.conf.fedora cli/koji.conf
}

src_install() {
	mkdir ${D}/etc

	if use minimal ; then
		python_foreach_impl emake -j1 -C koji install DESTDIR="${D}" || die
		emake -j1 -C cli install DESTDIR="${D}" || die
	else
		emake -j1 install DESTDIR="${D}" || die
	fi
}
