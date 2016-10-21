# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python2_7 )

inherit fedora-fedorahosted python-r1 autotools eutils
[ "${PV}" = 9999 ] && inherit git-r3

DESCRIPTION="Python extension module for Kerberos 5"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
	${PYTHON_DEPS}
	virtual/krb5
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"

src_prepare() {
	[ "${PV}" = 9999 ] && eautoreconf

	python_copy_sources
}

src_configure() {
	python_foreach_impl run_in_build_dir econf LIBNAME=$(get_libdir)
}

src_compile() {
	python_foreach_impl run_in_build_dir make DESTDIR="${ED}"
}

src_install()
{
	python_foreach_impl run_in_build_dir make install DESTDIR="${ED}"

	dodoc README krbV-code-snippets.py

	find "${ED}" -name '*.la' -delete
}
