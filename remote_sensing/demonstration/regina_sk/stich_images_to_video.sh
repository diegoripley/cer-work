 # Join ArcGIS Pro jpg sequence
ffmpeg -framerate 24 -r 24 \
  -i image_%05d.jpg \
  -c:v libx264 -pix_fmt yuv420p out.mp4
  