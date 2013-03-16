# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils

DESCRIPTION="perl6 File Tools"
HOMEPAGE="https://github.com/Heather/perl6-File-Tools"
EGIT_REPO_URI="git://github.com/Heather/perl6-File-Tools.git"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND="dev-lang/rakudo
dev-util/ufo
!dev-util/panda"
RDEPEND="${DEPEND}"

src_compile() {
	ufo
}

src_install() {
	make DESTDIR=${D} install || die
}
