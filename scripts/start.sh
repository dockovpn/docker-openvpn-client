#!/bin/bash

function datef() {
    # Output:
    # Sat Jun  8 20:29:08 2019
    date "+%a %b %-d %T %Y"
}

if [ ! -c /dev/net/tun ]; then
    echo "$(datef) Creating tun/tap device."
    mkdir -p /dev/net
    mknod /dev/net/tun c 10 200
fi

openvpn --config /opt/Dockovpn_data/client.ovpn