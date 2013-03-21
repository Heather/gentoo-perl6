# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: ufo.eclass
# @MAINTAINER: heather@cynede.net
# @BLURB: common settings and functions for ufo related packages

case ${EAPI:-0} in
  0) die "this eclass doesn't support EAPI 0" ;;
  1|2|3) ;;
  *) ;;
esac

inherit perl6

NO_UFO_DEPEND="dev-util/ufo"
DEPEND="${NO_UFO_DEPEND}"

# @FUNCTION: ufo_src_configure
# @DESCRIPTION: Runs nothing
ufo_src_configure() { :; }

# @FUNCTION: ufo_src_compile
# @DESCRIPTION: Runs ufo.
ufo_src_compile() {
	ufo || die "ufo failed"
}

# @FUNCTION: ufosrc_install
# @DESCRIPTION: installs via makefile
ufo_src_install () {
	make DESTDIR="${D}" install || die
}

EXPORT_FUNCTIONS src_configure src_compile src_install
