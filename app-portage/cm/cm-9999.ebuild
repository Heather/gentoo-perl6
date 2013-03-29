# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 perl6

DESCRIPTION="Crystal Maiden"
HOMEPAGE="https://github.com/Heather/CrystalMaiden"
EGIT_REPO_URI="git://github.com/Heather/CrystalMaiden.git"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND="dev-util/panda"
RDEPEND="${DEPEND}"

# @FUNCTION: crystalmaiden_src_configure
# @DESCRIPTION: Runs nothing
src_configure() { :; }

# @FUNCTION: crystalmaiden_src_compile
# @DESCRIPTION: Runs CRYSTAL MAIDEN
src_compile() {
	PERL6LIB=${S}/lib perl6 ${S}/bin/cm src compile || die "CM failed"
}

# @FUNCTION: crystalmaiden_src_test
# @DESCRIPTION: Runs tests.
src_test() {
	PERL6LIB=${S}/lib perl6 ${S}/bin/cm src test || die "tests failed"
}

# @FUNCTION: crystalmaiden_install
# @DESCRIPTION: installs via CRYSTAL MAIDEN
src_install () {
	PERL6LIB=${S}/lib perl6 ${S}/bin/cm src install ${D} || die "install fails"
}