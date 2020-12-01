#!/bin/bash

# Project to Web Mercator
gdalwarp -of VRT -t_srs EPSG:3857 CAN_LC_2015_CAL.tif CAN_LC_2015_CAL.vrt

# Tile dataset
gdal_translate --config GDAL_CACHEMAX 1024 -co NUM_THREADS=ALL_CPUS \
    -co "BLOCKXSIZE=512" -co "BLOCKYSIZE=512" \
    -co "TILED=YES" \
    -co "COMPRESS=DEFLATE" \
    CAN_LC_2015_CAL.vrt CAN_LC_2015_CAL_TILED.tif