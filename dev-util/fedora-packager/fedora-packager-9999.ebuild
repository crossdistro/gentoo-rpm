# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-pagure python-r1 autotools

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

	python_copy_sources
}

src_configure() {
	python_foreach_impl run_in_build_dir econf
}

src_compile() {
	python_foreach_impl run_in_build_dir make DESTDIR="${ED}"
}

src_install() {
	python_foreach_impl run_in_build_dir make install DESTDIR="${ED}"
}
