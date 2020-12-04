#!/bin/sh

# DSM
for file in dsm_*.tif
do
  echo $file
  gdalwarp -t_srs EPSG:26913 \
       -co "COMPRESS=LZW" \
       $file out/$file
done

# DTM
for file in dtm_*.tif
do
  echo $file
  gdalwarp -t_srs EPSG:26913 \
       -co "COMPRESS=LZW" \
       $file out/$file
done

# Merge
gdal_merge.py -o dsm_1m_utm13_e_regina.tif -ot Float32 \
        -n -32767 \
        -a_nodata -32767 \
        -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -co TILED=YES out/dsm_*.tif

gdal_merge.py -o dtm_1m_utm13_e_regina.tif -ot Float32 \
        -n -32767 \
        -a_nodata -32767 \
        -co NUM_THREADS=ALL_CPUS -co COMPRESS=LZW -co TILED=YES out/dtm_*.tif

# Canopy height model ()
gdal_calc.py -A dtm_1m_utm13_e_regina.tif -B dsm_1m_utm13_e_regina.tif --calc="B - A" \
    --type=Float32 \
    --outfile chm_1m_utm13_regina_1.tif 

gdal_calc.py -A chm_1m_utm13_regina_1.tif  --calc="A*(A>0)" --NoDataValue=0 \
    --type=Float32 \
    --outfile chm_1m_utm13_regina.tif --co COMPRESS=LZW --co TILED=YES

# Applying a z factor

https://pro.arcgis.com/en/pro-app/tool-reference/3d-analyst/applying-a-z-factor.htm
# If x, y units