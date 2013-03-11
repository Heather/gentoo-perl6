# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils

DESCRIPTION="Panda is an implementation of a Perl 6 module manager specification."
HOMEPAGE="https://github.com/tadzik/panda"
EGIT_REPO_URI="git://github.com/tadzik/panda.git"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND="dev-lang/rakudo"
RDEPEND="${DEPEND}"

src_compile() {
	:;
}

src_install() {
	DESTDIR=${D}/usr perl6 bootstrap.pl || die
}
