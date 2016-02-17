#!/bin/bash

thisdir=$(dirname "$(readlink -f "$0")")
props=$thisdir/duckdns.properties

if [ ! -f $props ]; then
    echo "No properties file found"
    exit 1
fi

. $props

if [ ! $token ] || [ ! $domains ]; then
    exit 1
fi

echo url="https://www.duckdns.org/update?domains=$domains&token=$token&ip=" | curl -k -o $thisdir/duckdns.log -K -
