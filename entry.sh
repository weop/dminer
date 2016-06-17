#!/bin/bash

if [ -z "$EMAIL" ]; then
    echo "Please set the environment variable for EMAIL!"
    exit 1
fi


if [ -z "$CURR" ]; then
   echo "Please set the environment variable for CURR!"
   exit 1
fi

CURRENCY=${CURR,,}

case $CURRENCY in
  bcn)
    POOL="stratum+tcp://bcn.pool.minergate.com:45550"
    ;;
  xmr)
    POOL="stratum+tcp://xmr.pool.minergate.com:45560"
    ;;
  mcn)
    POOL="stratum+tcp://mcn.pool.minergate.com:45640"
    ;;
  dsh)
    POOL="stratum+tcp://dsh.pool.minergate.com:45720"
    ;;
  qcn)
    POOL="stratum+tcp://qcn.pool.minergate.com:45570"
    ;;
  inf8)
    POOL="stratum+tcp://inf8.pool.minergate.com:45750"
    ;;
  fcn)
    POOL="stratum+tcp://fcn.pool.minergate.com:45610"
    ;;
  xdn)
    POOL="stratum+tcp://xdn.pool.minergate.com:45620"
    ;;
  *)
    POOL="stratum+tcp://xmr.pool.minergate.com:45560"
    ;;
esac


echo "Starting with Pool: $POOL for UserID: $EMAIL"

exec minerd -a cryptonight -o $POOL -u $EMAIL -p x
