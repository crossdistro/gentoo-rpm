# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit fedora-pagure python-single-r1 eutils

DESCRIPTION="Build system for the Fedora project"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="+minimal"

COMMON_DEPEND="
	app-arch/rpm
	dev-python/python-krbV
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
	dev-python/pyopenssl
	dev-python/urlgrabber
	sys-apps/yum
"

src_prepare() {
	cp "${FILESDIR}"/koji.conf.fedora cli/koji.conf
}

src_install() {
	mkdir ${D}/etc

	if use minimal ; then
		emake -j1 -C koji install DESTDIR="${D}" || die
		emake -j1 -C cli install DESTDIR="${D}" || die
	else
		emake -j1 install DESTDIR="${D}" || die
	fi
}
