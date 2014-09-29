library(shiny)
library(leaflet)
library(rgdal)



setwd("~/github/shiny_stuff/banyuls_map/")
####load data converted in geojson
capteurs<-readOGR("./data/capteurs.geojson", "OGRGeoJSON")

shinyServer(function(input, output, session) {
  map <- createLeafletMap(session, "map")
  session$onFlushed(once=TRUE, function() {
    map$addMarker(capteurs@coords[,2], 
               capteurs@coords[,1]
                  )
  })
  
  
})
