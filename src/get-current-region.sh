#!/bin/bash

die() { status=$1; shift; echo "FATAL: $*"; exit $status; }
EC2_AVAIL_ZONE="`wget -q -O -  http://169.254.169.254/latest/meta-data/placement/availability-zone || die \"wget availability zone has failed: $?\"`"
EC2_REGION="`echo \"$EC2_AVAIL_ZONE\" | sed -e 's:\([0-9][0-9]*\)[a-z]*\$:\\1:'`"

echo "Current host region: $EC2_REGION";
