# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit fedora-fedorahosted autotools eutils
[ "${PV}" = 9999 ] && inherit git-r3

DESCRIPTION="Python extension module for Kerberos 5"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
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
}

src_configure() {
	econf LIBNAME=$(get_libdir)
}

src_install()
{
	default

	dodoc README krbV-code-snippets.py

	find "${ED}" -name '*.la' -delete
}
