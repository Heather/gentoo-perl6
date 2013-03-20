# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for perl6"
HOMEPAGE=""
SRC_URI=""
LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
RDEPEND="dev-lang/rakudo"
DEPEND=""

#To-be-finalized
PROPERTIES="virtual"

src_install() {
	# I do it for panda and for some other perl6 packages
	# who don't separate prefix for bin and lib
	# it's WORKING TEMPorary solution without touching anything outside

	insinto /etc/env.d
	newins "${FILESDIR}"/80perl6 80perl6 || die
}
