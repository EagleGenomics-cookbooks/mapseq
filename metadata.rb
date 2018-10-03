name 'mapseq'
maintainer 'Eagle Genomics Ltd.'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache 2.0'
description 'Installs/Configures mapseq'
long_description 'Installs/Configures mapseq'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'apt'
depends 'build-essential'
depends 'magic_shell', '= 1.0.1'
depends 'tar'
