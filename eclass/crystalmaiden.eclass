# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: crystalmaiden.eclass
# @MAINTAINER: heather@cynede.net
# @BLURB: common settings and functions for CM related packages

case ${EAPI:-0} in
  0) die "this eclass doesn't support EAPI 0" ;;
  1|2|3) ;;
  *) ;;
esac

inherit perl6

NO_CM_DEPEND="app-portage/cm"
DEPEND="${NO_CM_DEPEND}"

# @FUNCTION: crystalmaiden_src_configure
# @DESCRIPTION: Runs nothing
crystalmaiden_src_configure() { :; }

# @FUNCTION: crystalmaiden_src_compile
# @DESCRIPTION: Runs CRYSTAL MAIDEN
crystalmaiden_src_compile() {
	cm src compile || die "CM failed"
}

# @FUNCTION: crystalmaiden_src_test
# @DESCRIPTION: Runs tests.
crystalmaiden_src_test() {
	cm src test || die "tests failed"
}

# @FUNCTION: crystalmaiden_install
# @DESCRIPTION: installs via CRYSTAL MAIDEN
crystalmaiden_src_install () {
	cm src install ${D} || die "install fails"
}

EXPORT_FUNCTIONS src_configure src_compile src_test src_install
