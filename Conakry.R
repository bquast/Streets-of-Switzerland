# print Liechtenstein
# Bastiaan Quast
# bquast@gmail.com

# load libraries
library(magrittr)
library(rgdal)
library(leaflet)

# data downloaded from https://osm.wno-edv-service.de/boundaries/

conakry <- readOGR("Conakry_AL4.shp",
                  layer = "Conakry_AL4", verbose = FALSE)
leaflet(conakry) %>%
  addPolygons(
    stroke = FALSE, fillOpacity = 0.5, smoothFactor = 0.5,
    color = ~colorQuantile("YlOrRd", states$AWATER)(AWATER)
  )


## new try


conakry <- readOGR("Conakry.shp",
                   layer = "Conakry", verbose = FALSE)

leaflet(conakry) %>%
  addPolygons(
    stroke = FALSE, fillOpacity = 0.5, smoothFactor = 0.5,
    color = ~colorQuantile("YlOrRd", states$AWATER)(AWATER)
  )

