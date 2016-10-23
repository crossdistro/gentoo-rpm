# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_4} )

inherit fedora-pagure python-r1 autotools

DESCRIPTION="Helper scripts for Fedora packagers"

LICENSE="GPL-3"
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
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/urlgrabber[${PYTHON_USEDEP}]
	dev-util/fedpkg[${PYTHON_USEDEP}]
	dev-util/koji[${PYTHON_USEDEP}]
	dev-util/rpmdevtools[${PYTHON_USEDEP}]
	net-misc/curl
"
# dev-python/iniparse[${PYTHON_USEDEP}]
# dev-util/mock[${PYTHON_USEDEP}]

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
