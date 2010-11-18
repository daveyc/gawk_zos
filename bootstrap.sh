#! /bin/sh

# bootstrap.sh --- touch relevant files to avoid out-of-date issues in CVS sandboxes

# Copyright (C) 2007, 2009, 2010 the Free Software Foundation, Inc.
# 
# This file is part of GAWK, the GNU implementation of the
# AWK Programming Language.
# 
# GAWK is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
# 
# GAWK is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA

find . -name aclocal.m4 -print | grep -v /CVS/ | xargs touch
find awklib -type f -print | grep -v /CVS/ | xargs touch
sleep 1
touch configure
sleep 2
touch configh.in
sleep 1
touch test/Maketests
find . -name Makefile.in -print | grep -v /CVS/ | xargs touch
touch doc/*.info
touch po/*.gmo
touch po/stamp-po
touch awkgram.c
touch command.c
touch version.c