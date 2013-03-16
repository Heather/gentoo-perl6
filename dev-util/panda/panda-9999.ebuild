# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils

DESCRIPTION="Panda is an implementation of a Perl 6 module manager specification."

#originally tadzik
HOMEPAGE="https://github.com/Heather/panda"
EGIT_REPO_URI="git://github.com/Heather/panda.git"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND="dev-lang/rakudo
!dev-perl/filetools"
RDEPEND="${DEPEND}"

src_compile() {
	:;
}

src_install() {
	#This will be eclass work:
	DESTDIR=${D} PREFIX="/usr/lib/parrot/5.1.0/languages/perl6/site/" perl6 bootstrap.pl || die
}
