# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 perl6

DESCRIPTION="Swoops down and creates your Perl 6 project Makefile for you"
HOMEPAGE="https://github.com/masak/ufo"

#default is masak repo
EGIT_REPO_URI="git://github.com/Heather/ufo.git"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	./bin/ufo || die
}

src_install() {
	DESTDIR="${D}" PREFIX=/usr make -e install || die
}
