# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 ufo

DESCRIPTION="ignore stuff"
HOMEPAGE="https://github.com/Heather/ignore"
EGIT_REPO_URI="git://github.com/Heather/ignore.git"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND="|| ( dev-perl/filetools dev-util/panda )"
RDEPEND="${DEPEND}"
