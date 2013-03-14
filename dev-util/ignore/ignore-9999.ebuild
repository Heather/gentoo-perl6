# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils

DESCRIPTION="ignore stuff"
HOMEPAGE="https://github.com/Cynede/ignore"

EGIT_REPO_URI="git://github.com/Cynede/ignore.git"
#EGIT_HAS_SUBMODULES="true"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND="dev-lang/rakudo
|| ( dev-perl/filetools dev-util/panda )
dev-util/ufo"
RDEPEND="${DEPEND}"

src_compile() {
	ufo
}

src_install() {
	PREFIX=${D}/usr make -e install || die
}
