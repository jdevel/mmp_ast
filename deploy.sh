#!/bin/bash
#######################################
# Written by Danny Williams JR. 
# My Managed PBX, Cause we love Linux and Open source we write quality stuff!
#
# This setup script is licenced under the GPLv2. You make changes I better
# get a copy!. mmpreply@yahoo.com.
#
# You might have to fix the paths. But I wrote this for Ubuntu Server.
# So your experience may vary on say Fedora or CentOS.
#######################################

#!/bin/bash

# Download vicidial and asterisk.
wget http://downloads.sourceforge.net/project/astguiclient/astguiclient_2.4rc2.zip
wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-1.6.2.16.1.tar.gz

#/var/lock/subsys
mkdir /var/lock/subsys

# Ubuntu setup
apt-get install \
	imagemagick \
	apache2 \
	apache2-utils \
	libapache2-mod-perl2 \
	libapache2-mod-php5 \
	php5 \
	php5-dev \
	php5-cli \
	php5-mysql \
	php5-imagick \
	xml-core \
	xsltproc \
	php-pear \
	libgd-tools \
        libxml2 \
        libxml2-dev \
        libncurses5-dev \
        ccache \
        sox

# Work in the Perl stuff
echo "install YAML" | perl -MCPAN -e 'shell'
perl -MCPAN -e 'install Moose'
perl -MCPAN -e 'install XML::Writer'
perl -MCPAN -e 'install DBI'
perl -MCPAN -e 'force install DBD::mysql'
perl -MCPAN -e 'install XML::Simple'
perl -MCPAN -e 'install XML::Generator'
perl -MCPAN -e 'install XML::Generator::DBI'
perl -MCPAN -e 'install Asterisk'
perl -MCPAN -e 'install XML::Handler::YAWriter'
perl -MCPAN -e 'install Digest::MD5'
perl -MCPAN -e 'install Cache::Memcached::Fast'

echo "Edit /etc/my.cnf and set query_cache_size = 32M"
