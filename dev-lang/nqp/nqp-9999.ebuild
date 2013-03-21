# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lang/nqp/nqp-9999.ebuild $

EAPI=3

inherit eutils multilib git-2

PARROT_VERSION="4.4.0"

DESCRIPTION="Not Quite Perl, a Perl 6 bootstrapping compiler"
HOMEPAGE="http://rakudo.org/"

EGIT_REPO_URI="git://github.com/perl6/nqp.git"
EGIT_MASTER="master"

#SRC_URI="http://github.com/perl6/${PN}/tarball/${PV} -> ${P}.tar.gz"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS=""
IUSE="doc"

RDEPEND=">=dev-lang/parrot-${PARROT_VERSION}[unicode]"
DEPEND="${RDEPEND}
	dev-lang/perl"

src_prepare() {
	cd "${WORKDIR}"
	ln -s * "${S}" || die
	cd "${S}"
	echo "${PV}" > VERSION
}

src_configure() {
	perl Configure.pl || die
}

src_compile() {
	emake -j1 || die #nowarn
}

src_test() {
	emake -j1 test || die
}

src_install() {
	emake DESTDIR="${ED}" install || die

	dodoc CREDITS README || die

	if use doc; then
		dodoc docs/* || die
	fi
}
