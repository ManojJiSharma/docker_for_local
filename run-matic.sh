#!/bin/bash

# Start ganache
bash docker-ganache-start.sh

# Start heimdall instances
bash docker-heimdall-start-all.sh

# Setup bor
bash docker-bor-setup.sh

# Start bor
bash docker-bor-start-all.sh

# Deploy contracts on Child chain
bash ganache-deployment-bor.sh

# Sync contract addresses to Main chain
bash ganache-deployment-sync.sh