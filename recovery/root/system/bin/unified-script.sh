#!/system/bin/bash

# This script is needed to automatically set device props.


load_RMX2001()
{
    resetprop "ro.product.model" "RMX2001"
    resetprop "ro.product.name" "RMX2001"
    resetprop "ro.build.product" "RMX2001"
    resetprop "ro.product.device" "RMX2001"
    echo "Using default (RMX2001) props"
}

load_RMX2151()
{
    resetprop "ro.product.model" "RMX2151"
    resetprop "ro.product.name" "RMX2151"
    resetprop "ro.build.product" "RMX2151"
    resetprop "ro.product.device" "RMX2151"
    echo "Realme 7 detected - using RMX2151 props"
}

project=$(cat /proc/oppoVersion/prjVersion)
echo $project

case $project in
    "20682")
        load_RMX2151
        ;;
    *)
        load_RMX2001
        ;;
esac

exit 0
