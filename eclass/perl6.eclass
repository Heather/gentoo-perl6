# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: perl6.eclass
# @MAINTAINER: heather@cynede.net
# @BLURB: common settings and functions for perl6 related packages

#case ${EAPI:-0} in
#  0) die "this eclass doesn't support EAPI 0" ;;
#  1|2|3) ;;
#  *) ;;
#esac

NO_RAKUDO_DEPEND="virtual/perl6"
DEPEND="${NO_RAKUDO_DEPEND}"

inherit eutils
