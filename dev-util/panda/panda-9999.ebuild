# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils perl6

DESCRIPTION="Panda is an implementation of a Perl 6 module manager specification."

HOMEPAGE="https://github.com/tadzik/panda"
EGIT_REPO_URI="git://github.com/tadzik/panda.git"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND="!dev-perl/filetools
!dev-perl/mimebase64
!dev-perl/uri
!dev-perl/lwpsimple"
RDEPEND="${DEPEND}"

src_configure() {
          PERL6SITE=$(perl6 -e 'print %*CUSTOM_LIB<site>')
}
src_compile() { :; } # NO

# TRUE PANDA INSTALL
src_install() {
	DESTDIR="${D}"/"$PERL6SITE" perl6 bootstrap.pl || die
	dobin "${D}"/"$PERL6SITE"/bin/panda || die
	rm -rf "${D}"/"$PERL6SITE"/bin || die
}
