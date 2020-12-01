<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" maxScale="0" minScale="1e+08" hasScaleBasedVisibilityFlag="0" version="3.16.0-Hannover">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>0</Searchable>
  </flags>
  <temporal mode="0" fetchMode="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <property value="false" key="WMSBackgroundLayer"/>
    <property value="false" key="WMSPublishDataSourceUrl"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property value="Value" key="identify/format"/>
  </customproperties>
  <pipe>
    <provider>
      <resampling zoomedOutResamplingMethod="nearestNeighbour" zoomedInResamplingMethod="nearestNeighbour" maxOversampling="2" enabled="false"/>
    </provider>
    <rasterrenderer opacity="1" nodataColor="" type="paletted" band="1" alphaBand="-1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
        <paletteEntry color="#003d00" value="1" label="Temperate or sub-polar needleleaf forest" alpha="255"/>
        <paletteEntry color="#949d6f" value="2" label="Sub-polar taiga needleleaf forest&#xa;" alpha="255"/>
        <paletteEntry color="#128b3d" value="5" label="Temperate or sub-polar broadleaf deciduous forest" alpha="255"/>
        <paletteEntry color="#5c752b" value="6" label="Mixed forest" alpha="255"/>
        <paletteEntry color="#b48930" value="8" label="Temperate or sub-polar shrubland&#xa;" alpha="255"/>
        <paletteEntry color="#e1cf89" value="10" label="Temperate or sub-polar grassland" alpha="255"/>
        <paletteEntry color="#9d7555" value="11" label="Sub-polar or polar shrubland-lichen-moss" alpha="255"/>
        <paletteEntry color="#bad48e" value="12" label="Sub-polar or polar grassland-lichen-moss" alpha="255"/>
        <paletteEntry color="#40896f" value="13" label="Sub-polar or polar barren-lichen-moss" alpha="255"/>
        <paletteEntry color="#6aa389" value="14" label="Wetland" alpha="255"/>
        <paletteEntry color="#e6ae66" value="15" label="Cropland" alpha="255"/>
        <paletteEntry color="#a8abae" value="16" label="Barren land" alpha="255"/>
        <paletteEntry color="#dc2126" value="17" label="Urban and built-up" alpha="255"/>
        <paletteEntry color="#4c70a3" value="18" label="Water" alpha="255"/>
        <paletteEntry color="#ffffff" value="19" label="Snow and ice" alpha="255"/>
      </colorPalette>
    </rasterrenderer>
    <brightnesscontrast contrast="0" brightness="0" gamma="1"/>
    <huesaturation colorizeRed="255" saturation="0" colorizeGreen="128" colorizeOn="0" colorizeBlue="128" colorizeStrength="100" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <originalStyle>
    <maplayer styleCategories="AllStyleCategories" maxScale="0" autoRefreshTime="0" refreshOnNotifyMessage="" refreshOnNotifyEnabled="0" type="raster" minScale="1e+08" hasScaleBasedVisibilityFlag="0" autoRefreshEnabled="0">
      <extent>
        <xmin>-2600030</xmin>
        <ymin>-885090</ymin>
        <xmax>3100000</xmax>
        <ymax>3914940</ymax>
      </extent>
      <id>CAN_LC_2015_CAL_242451d1_7d55_401a_90c3_e4f46bcc4bfe</id>
      <datasource>./data/CAN_LC_2015_CAL.tif</datasource>
      <keywordList>
        <value/>
      </keywordList>
      <layername>CAN_LC_2015_CAL</layername>
      <srs>
        <spatialrefsys>
          <wkt>PROJCRS["NAD83 / Canada Atlas Lambert",BASEGEOGCRS["NAD83",DATUM["North American Datum 1983",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1]]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.0174532925199433]],ID["EPSG",4269]],CONVERSION["Canada Atlas Lambert",METHOD["Lambert Conic Conformal (2SP)",ID["EPSG",9802]],PARAMETER["Latitude of false origin",49,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8821]],PARAMETER["Longitude of false origin",-95,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8822]],PARAMETER["Latitude of 1st standard parallel",49,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8823]],PARAMETER["Latitude of 2nd standard parallel",77,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8824]],PARAMETER["Easting at false origin",0,LENGTHUNIT["metre",1],ID["EPSG",8826]],PARAMETER["Northing at false origin",0,LENGTHUNIT["metre",1],ID["EPSG",8827]]],CS[Cartesian,2],AXIS["(E)",east,ORDER[1],LENGTHUNIT["metre",1]],AXIS["(N)",north,ORDER[2],LENGTHUNIT["metre",1]],USAGE[SCOPE["unknown"],AREA["Canada"],BBOX[40.04,-141.01,86.46,-47.74]],ID["EPSG",3978]]</wkt>
          <proj4>+proj=lcc +lat_0=49 +lon_0=-95 +lat_1=49 +lat_2=77 +x_0=0 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs</proj4>
          <srsid>27401</srsid>
          <srid>3978</srid>
          <authid>EPSG:3978</authid>
          <description>NAD83 / Canada Atlas Lambert</description>
          <projectionacronym>lcc</projectionacronym>
          <ellipsoidacronym>EPSG:7019</ellipsoidacronym>
          <geographicflag>false</geographicflag>
        </spatialrefsys>
      </srs>
      <resourceMetadata>
        <identifier/>
        <parentidentifier/>
        <language/>
        <type/>
        <title/>
        <abstract/>
        <contact>
          <name/>
          <organization/>
          <position/>
          <voice/>
          <fax/>
          <email/>
          <role/>
        </contact>
        <links/>
        <fees/>
        <encoding/>
        <crs>
          <spatialrefsys>
            <wkt/>
            <proj4/>
            <srsid>0</srsid>
            <srid>0</srid>
            <authid/>
            <description/>
            <projectionacronym/>
            <ellipsoidacronym/>
            <geographicflag>false</geographicflag>
          </spatialrefsys>
        </crs>
        <extent>
          <spatial miny="0" maxz="0" dimensions="2" minz="0" minx="0" maxy="0" maxx="0" crs=""/>
          <temporal>
            <period>
              <start/>
              <end/>
            </period>
          </temporal>
        </extent>
      </resourceMetadata>
      <provider>gdal</provider>
      <noData>
        <noDataList useSrcNoData="0" bandNo="1"/>
      </noData>
      <map-layer-style-manager current="default">
        <map-layer-style name="default"/>
      </map-layer-style-manager>
      <flags>
        <Identifiable>1</Identifiable>
        <Removable>1</Removable>
        <Searchable>0</Searchable>
      </flags>
      <temporal mode="0" fetchMode="0" enabled="0">
        <fixedRange>
          <start/>
          <end/>
        </fixedRange>
      </temporal>
      <customproperties>
        <property value="false" key="WMSBackgroundLayer"/>
        <property value="false" key="WMSPublishDataSourceUrl"/>
        <property value="0" key="embeddedWidgets/count"/>
        <property value="Value" key="identify/format"/>
      </customproperties>
      <pipe>
        <rasterrenderer opacity="1" nodataColor="" type="paletted" band="1" alphaBand="-1">
          <rasterTransparency/>
          <minMaxOrigin>
            <limits>None</limits>
            <extent>WholeRaster</extent>
            <statAccuracy>Estimated</statAccuracy>
            <cumulativeCutLower>0.02</cumulativeCutLower>
            <cumulativeCutUpper>0.98</cumulativeCutUpper>
            <stdDevFactor>2</stdDevFactor>
          </minMaxOrigin>
          <colorPalette>
            <paletteEntry color="#003d00" value="1" label="Temperate or sub-polar needleleaf forest" alpha="255"/>
            <paletteEntry color="#949d6f" value="2" label="Sub-polar taiga needleleaf forest&#xa;" alpha="255"/>
            <paletteEntry color="#128b3d" value="5" label="Temperate or sub-polar broadleaf deciduous forest" alpha="255"/>
            <paletteEntry color="#5c752b" value="6" label="Mixed forest" alpha="255"/>
            <paletteEntry color="#b48930" value="8" label="Temperate or sub-polar shrubland&#xa;" alpha="255"/>
            <paletteEntry color="#e1cf89" value="10" label="Temperate or sub-polar grassland" alpha="255"/>
            <paletteEntry color="#9d7555" value="11" label="Sub-polar or polar shrubland-lichen-moss" alpha="255"/>
            <paletteEntry color="#bad48e" value="12" label="Sub-polar or polar grassland-lichen-moss" alpha="255"/>
            <paletteEntry color="#40896f" value="13" label="Sub-polar or polar barren-lichen-moss" alpha="255"/>
            <paletteEntry color="#6aa389" value="14" label="Wetland" alpha="255"/>
            <paletteEntry color="#e6ae66" value="15" label="Cropland" alpha="255"/>
            <paletteEntry color="#a8abae" value="16" label="Barren land" alpha="255"/>
            <paletteEntry color="#dc2126" value="17" label="Urban and built-up" alpha="255"/>
            <paletteEntry color="#4c70a3" value="18" label="Water" alpha="255"/>
            <paletteEntry color="#ffffff" value="19" label="Snow and ice" alpha="255"/>
          </colorPalette>
          <colorramp name="[source]" type="randomcolors"/>
        </rasterrenderer>
        <brightnesscontrast contrast="0" brightness="0"/>
        <huesaturation colorizeRed="255" saturation="0" colorizeGreen="128" colorizeBlue="128" colorizeStrength="100" colorizeOn="0" grayscaleMode="0"/>
        <rasterresampler maxOversampling="2"/>
      </pipe>
      <blendMode>0</blendMode>
    </maplayer>
  </originalStyle>
  <blendMode>0</blendMode>
</qgis>
