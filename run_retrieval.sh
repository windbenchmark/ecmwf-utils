#!/bin/bash

# Navigate to the script's directory ensuring relative paths work correctly
cd "$(dirname "$0")"
# Run the ECMWF retrieval command in the ecmwf-utils environment
mamba run -n ecmwf-utils python -m src retrieval --query-path ./queries/kelmarsh-full.json --config-path ./config/config_hres.yml


