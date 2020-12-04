#!/bin/sh

for file in dsm_*.tif
do
  echo $file
  gdalwarp -t_srs EPSG:26913 \
       -co "COMPRESS=LZW" \
       $file out/$file
done

gdal_merge.py -o regina_dsm.tif -ot Float32 \
        -n -32767 \
        -a_nodata -32767 \
        -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -co TILED=YES out/dsm_*.tif

# Canopy height model ()
gdal_calc.py -A dtm_1m_utm13_regina.tif -B regina_dsm.tif --calc="B - A" \
    --type=Float32 \
    --outfile chm_1m_utm13_regina_1.tif 

gdal_calc.py -A chm_1m_utm13_regina_1.tif  --calc="(A<0)*1" \
    --type=Float32 -co COMPRESS=LZW -co TILED=YES \
    --outfile chm_1m_utm13_regina.tif 



# Applying a z factor

https://pro.arcgis.com/en/pro-app/tool-reference/3d-analyst/applying-a-z-factor.htm
# If x, y units