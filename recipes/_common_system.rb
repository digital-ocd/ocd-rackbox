#
# Cookbook Name:: ocd_rackbox
# Recipe:: _common_system
#

# Update apt-get packages
include_recipe "apt"

# Install common packages
package 'autoconf'
package 'automake'
package 'bison'
package 'build-essential'
package 'curl'
package 'graphicsmagick-libmagick-dev-compat'
package 'git-core'
package 'libc6-dev'
package 'libffi-dev'
package 'libgdbm-dev'
package 'libmagickwand-dev'
package 'libncurses5-dev'
package 'libreadline6'
package 'libreadline6-dev'
package 'libsqlite3-dev'
package 'libssl-dev'
package 'libtool'
package 'libv8-dev'
package 'libxml2-dev'
package 'libxslt1-dev'
package 'libyaml-dev'
package 'openssl'
package 'pkg-config'
package 'rubygems'
package 'sqlite3'
package 'software-properties-common'
package 'subversion'
package 'zlib1g'
package 'zlib1g-dev'