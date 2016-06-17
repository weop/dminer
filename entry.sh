#!/bin/bash

echo "Starting with User ID: $EMAIL"

exec minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u $EMAIL -p x
