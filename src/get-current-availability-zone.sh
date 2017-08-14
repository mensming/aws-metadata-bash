#!/bin/bash

die() { status=$1; shift; echo "FATAL: $*"; exit $status; }
EC2_AVAIL_ZONE="`wget -q -O -  http://169.254.169.254/latest/meta-data/placement/availability-zone || die \"wget availability zone has failed: $?\"`"

echo "Current host availability zone: $EC2_AVAIL_ZONE";
