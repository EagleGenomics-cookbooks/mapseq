name 'mapseq'
maintainer 'Eagle Genomics Ltd.'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache-2.0'
description 'Installs/Configures mapseq'
long_description 'Installs/Configures mapseq'
version '0.1.0'
supports 'ubuntu', '>= 14.04'
chef_version '>= 12' if respond_to?(:chef_version)

issues_url 'https://github.com/EagleGenomics-cookbooks/mapseq/issues'
source_url 'https://github.com/EagleGenomics-cookbooks/mapseq'

depends 'apt'
depends 'magic_shell', '= 1.0.1'
depends 'tar'
