#! /bin/bash

set -e

MOLECULE_BOX="w2022_cis" MOLECULE_CITRIX_PVS_VERSION="2308" molecule test
MOLECULE_BOX="w2019_cis" MOLECULE_CITRIX_PVS_VERSION="2308" molecule test
