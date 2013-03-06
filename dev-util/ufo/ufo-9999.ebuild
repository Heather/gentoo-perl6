# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils

DESCRIPTION="Swoops down and creates your Perl 6 project Makefile for you"
HOMEPAGE="git://github.com/masak/ufo"
EGIT_REPO_URI="git://github.com/masak/ufo.git"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND="dev-lang/rakudo"
RDEPEND="${DEPEND}"

src_compile() {
	./bin/ufo || die
}

src_install() {
	PREFIX=${D}/usr make -e install || die
}
