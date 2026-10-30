#!/bin/bash
# WHEN RUNNING THIS DO: `setsid -f ./run_retrieval.sh >"./retrieval_<LOGNAME>_<DATE>.log" 2>&1 </dev/null

# Navigate to the script's directory ensuring relative paths work correctly
cd "$(dirname "$0")"
# Run the ECMWF retrieval command in the ecmwf-utils environment
mamba run -n ecmwf-utils python -m src retrieval --skip-cost --query-path "queries/australia-full.json" --config-path ./config/config_hres_10d.yml


