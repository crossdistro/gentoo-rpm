# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

#
# Original Author: pavlix
# Purpose: Fetch projects from Fedora Pagure.
#

PAJURE_PROJECT="${PN}"
EGIT_REPO_URI="${EGIT_REPO_URI:-"https://pagure.io/${PAJURE_PROJECT}.git"}"
HOMEPAGE="https://pagure.io/${PAJURE_PROJECT}/"
