library(shiny)
library(leaflet)



shinyUI(fluidPage(
  titlePanel("title panel"),

  leafletMap(
    "map", "100%", 400,
    initialTileLayer = "//{s}.tiles.mapbox.com/v3/jcheng.map-5ebohr46/{z}/{x}/{y}.png",
    initialTileLayerAttribution = HTML('Maps by <a href="http://www.mapbox.com/">Mapbox</a>'),
    options=list(
      center = c(42.4797, 3.1181),
      zoom = 12
    )
  ),
  
  htmlOutput("details")
  
#   sidebarLayout(
#     sidebarPanel( "sidebar panel"),
#     mainPanel("main panel")
#   )
  
))

