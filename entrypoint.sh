#!/bin/bash
chmod a+x /app/usr/local/bin/*
cp -rf /app/* /host/
export SYSTEMCTL_FORCE_BUS=1
systemctl daemon-reload
systemctl stop hello.service || true
systemctl start hello.service