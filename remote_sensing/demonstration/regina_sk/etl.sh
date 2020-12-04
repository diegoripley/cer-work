#!/bin/sh

# Merge
# -co TILED=YES

# DTM
gdal_merge.py -o dtm_1m_utm13_e_regina_1.tif -ot Float32 \
        -n -32767 \
        -a_nodata -32767 \
        -co COMPRESS=LZW dtm_*_e_*_*.tif

gdalwarp -t_srs EPSG:26913 \
       -co "COMPRESS=LZW" \
       dtm_1m_utm13_e_regina_1.tif dtm_1m_utm13_e_regina.tif

# DSM
gdal_merge.py -o dsm_1m_utm13_e_regina_1.tif -ot Float32 \
        -n -32767 \
        -a_nodata -32767 \
        -co COMPRESS=LZW  dsm_*_e_*_*.tif

gdalwarp -t_srs EPSG:26913 \
       -co "COMPRESS=LZW" \
       dsm_1m_utm13_e_regina_1.tif dsm_1m_utm13_e_regina.tif


# Canopy height model ()
gdal_calc.py -A dtm_1m_utm13_e_regina.tif -B dsm_1m_utm13_e_regina.tif --calc="B-A" \
    --type=Float32 \
    --outfile chm_1m_utm13_regina_1.tif \
    --NoDataValue=-32767

# Where 
gdal_calc.py -A chm_1m_utm13_regina_1.tif --calc="A*(A>0)" \
  --type=Float32 \
  --outfile chm_1m_utm13_regina_2.tif \
  --NoDataValue=-32767

gdalwarp -t_srs EPSG:26913 \
       -co "COMPRESS=LZW" \
       chm_1m_utm13_regina_2.tif chm_1m_utm13_regina.tif \
       -co "PREDICTOR=3"




#gdal_calc.py -A chm_1m_utm13_regina_1.tif --outfile chm_1m_utm13_regina_2.tif \
#  --calc="0*(A<0)" \
#  --type=Float32

#--NoDataValue=0 \


#gdalwarp -t_srs EPSG:26913 \
#       -co "COMPRESS=LZW" \
#       dtm_1m_utm13_e_regina_1.tif dtm_1m_utm13_e_regina.tif
# Applying a z factor

https://pro.arcgis.com/en/pro-app/tool-reference/3d-analyst/applying-a-z-factor.htm
# If x, y units
# https://docs.qgis.org/testing/en/docs/user_manual/working_with_raster/raster_analysis.html#raster-calculator
("elevation@1" < 0) * 1