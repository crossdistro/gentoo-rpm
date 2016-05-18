# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit fedora-pagure eutils autotools
[ "${PV}" = 9999 ] && inherit git-r3

DESCRIPTION="Helper scripts for Fedora packagers"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/iniparse
	dev-python/pycurl
	dev-python/urlgrabber
	dev-util/fedpkg
	dev-util/koji
	dev-util/mock
	dev-util/rpmdevtools
	net-misc/curl
"
# dev-util/rpmlint

src_prepare() {
	[ "${PV}" = 9999 ] && eautoreconf
}

src_configure() {
	econf PYTHON=python2
}
