
# server.R

#===============================================================================
#                               SHINYSERVER                                    #
#===============================================================================

shinyServer(function(input, output, session) {
  
  #===============================================================================
  #                        DASHBOARD SERVER FUNCTIONS                            #
  #===============================================================================
  # Render National Home Value Index Box
  output$schoolsafety1 <- renderValueBox({
    valueBox(
      paste0("14 States"), paste( "School Safety Audits"), 
      icon = icon("far fa-clipboard", lib="font-awesome"), color = "green"
    )
  })
  
  # Highest Home Value Index by City Box
  output$schoolsafety2 <- renderValueBox({
    valueBox(
      paste0("42 States"), paste("School Safety Drills"), 
      icon = icon("fas fa-bullhorn", lib="font-awesome"), color = "blue"
    )
  })
  
  # Render Annual Price Growth  Box
  output$schoolsafety3 <- renderValueBox({
    valueBox(
      paste0("44 States"), paste("School Safety Plans"), icon = icon("fas fa-school", lib="font-awesome"), color = "red"
    )
  })
  

  
  # Render top years of shootings charts 
  #output$top10StatesBar <- renderChart({
  #  p  <-ggplot(data=school_shooting, aes(x=school_year)) +
   #   +     geom_bar() +
    #  +     geom_text(stat='count', aes(label=..count..), vjust=-1)
    #p$params$width <- 1000
  #  p$params$height <- 200
   # p$xAxis(staggerLabels = TRUE)
    #p$yAxis(axisLabel = "Annual Growth (%)", width = 50)
    #return(p)
  #})
  
  # Render days of the week 
  #output$top10CitiesBar <- renderChart({
   # dayofweek <-ggplot(data=school_shooting, aes(x=day_of_week)) +
    #  +     geom_bar() +
     # +     geom_text(stat='count', aes(label=..count..), vjust=-1)
    #p <- nPlot(Annual~location, data = current, type = "discreteBarChart", dom = "top10CitiesBar")
    #p$params$width <- 1000
    #p$params$height <- 200
    #p$xAxis(staggerLabels = TRUE)
    #p$yAxis(axisLabel = "Annual Growth (%)", width = 50)
    #return(p)
  #===============================================================================
  #                        EXPLORER                           #
  #===============================================================================
  output$mymap <- renderLeaflet({
    m <- leaflet(data = school_shooting) %>%
      addTiles() %>%
      addMarkers(~long, ~lat, label = ~school_name)%>%
      setView(lng=-73.935242, lat=40.730610 , zoom=10)
    m
  }) 
 
  
})
  

  

  