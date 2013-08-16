#!/bin/bash

# Install basic stuff available immediately via YUM
yum install wget make perl perl-CPAN subversion kernel kernel-headers kernel-devel rpm-build gcc httpd php mysql mysql-server php-mysql gcc-c++ ncurses-devel libxml2 libxml2-devel coreutils subversion

# Get the rpmforge rpm so we have access to other misc rpm's needed for Vicidial.
rpm -Uvh http://apt.sw.be/redhat/el6/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm

# Install CPAN modules / Vicidial necessary files via rpmforge
yum install perl-Net-Server perl-Time-HiRes perl-Spreadsheet-WriteExcel perl-Proc-ProcessTable perl-Curses perl-MD5 perl-Crypt-RC4 perl-Jcode perl-Parse-RecDescent perl-Spreadsheet-ParseExcel perl-OLE-Storage_Lite perl-Unicode-Map perl-Mail-Sendmail

# Setup CPAN and get any other Perl modules not obtainable via yum/rpmforge (example perl-Digest-Perl-MD5 which cuts out on needing /usr/bin/false
LINK1="http://mirrors.ibiblio.org"
LINK2="http://mirrors.ccs.neu.edu"

(echo; echo; echo; echo "yes"; echo "200"; echo; echo; echo; echo "follow"; echo; echo; echo; echo; echo; echo; echo; echo; echo; echo; echo "$LINK1"; echo "$LINK2"; echo;) | perl -MCPAN -e 'shell' };

echo "install Digest::Perl::MD5" | perl -MCPAN -e 'shell'

# Download Asterisk and Dahdi
wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-1.8.22.0.tar.gz
wget http://downloads.asterisk.org/pub/telephony/dahdi-linux-complete/dahdi-linux-complete-current.tar.gz

# SVN checkout the latest repo
svn co svn://svn.eflo.net:3690/agc_2-X/trunk
