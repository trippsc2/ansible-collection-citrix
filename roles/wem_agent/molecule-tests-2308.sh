#! /bin/bash

set -e

MOLECULE_BOX="w2022_cis" MOLECULE_CITRIX_WEM_VERSION="2308" molecule test
MOLECULE_BOX="w2019_cis" MOLECULE_CITRIX_WEM_VERSION="2308" molecule test
MOLECULE_BOX="w11_23h2_base" MOLECULE_CITRIX_WEM_VERSION="2308" molecule test
MOLECULE_BOX="w10_22h2_base" MOLECULE_CITRIX_WEM_VERSION="2308" molecule test
