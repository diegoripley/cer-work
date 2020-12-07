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

# Jasper
gdal_merge.py -o dsm_1m_utm11_e_jasper_1.tif -ot Float32 \
        -n -32767 \
        -a_nodata -32767 \
        -co COMPRESS=LZW  *.tif


# Canopy height model ()
gdal_calc.py -A dtm_1m_utm13_e_regina.tif -B dsm_1m_utm13_e_regina.tif --calc="B-A" \
    --type=Float32 \
    --outfile chm_1m_utm13_regina_1.tif \
    --NoDataValue=-32767

# Where
# Greater than 1 meter, gets rid of a lot of noise
gdal_calc.py -A chm_1m_utm13_regina_1.tif --calc="A*(A>1)" \
  --type=Float32 \
  --outfile chm_1m_utm13_regina_2.tif \
  --NoDataValue=-32767

gdalwarp -t_srs EPSG:26913 \
       -co "COMPRESS=LZW" \
       chm_1m_utm13_regina_2.tif chm_1m_utm13_regina.tif \
       -co "PREDICTOR=3"


# Then I did the following
1. Run zonal statistics. Use raster layer (chm). Calculate mean statistics
2. Run Set Z value for the new building layer


# For linking to trees
1. Use sample raster values. Remove any that are linked to 0
2. Set Z value or Esri will not like

# Lessons Learned (ArcGIS Pro)
- Image server significantly slows down export of animation
- https://resources.esri.ca/arcgis-pro/troubleshooting-arcgis-pro-like-an-esri-canada-support-analyst-part-1