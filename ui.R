

dashboardPage(skin = "green",
              dashboardHeader(title = "How Has School Safety Measures Changed Since Parkland?", titleWidth = 400),
              dashboardSidebar(
                sidebarMenu(id = "sbm",
                            menuItem("School Safety", tabName = "help", icon = icon("school")),
                            menuSubItem("Source1", icon = icon("question-circle"),tabName = "helpAbout"),
                            menuSubItem("Source2", icon = icon("question-circle"),tabName = "helpWelcome"),
                            menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
                            menuItem("School Shooting", tabName = "explorer", icon = icon("search")),
                            menuItem("State Profiles", tabName = "valueAnalysis", icon = icon("area-chart"))
                            
                )# end of sidebarMenu
              ),#end of dashboardSidebar
              
              dashboardBody(
                tabItems(
                  tabItem(tabName = "help"),
                  tabItem(tabName = "dashboard",
                      tabsetPanel(type = "tabs",
                          tabPanel("School Safety Measures",  
                            fluidRow(
                              valueBox( "14 States"," School Safety Audits ", color = "red",icon = icon("far fa-clipboard", lib="font-awesome")),
                              valueBox("42 States" ,"School Safety Drills ", color = "teal",icon = icon("fas fa-bullhorn", lib="font-awesome")),
                              valueBox("44 States"," Mississippi Federal Revenue Contribution", color = "blue",  icon("fas fa-school", lib="font-awesome"))
                              ),
                              box(
                                title = "School Safety Measure", background = "maroon", solidHeader = TRUE,
                                plotOutput("plot4", height = 350)
                              ),
                             box(
                              title = "test2", background = "black", solidHeader = TRUE,
                                plotOutput("text2", height = 400)
                              ),
                              box(
                                title = "Inputs", background = "black",
                                "Box content here", br(), "More box content",
                                sliderInput("slider", "Slider input:", 1, 100, 50),
                                textInput("text", "Text input:")
                              ),
                              box(
                                title = "test", background = "black", solidHeader = TRUE,
                                plotOutput("text", height = 400)
                            )),
                           tabPanel("School Shootings Over Time", 
                                   fluidPage(
                                     fluidRow(
                                       column( width = 12,
                                         leafletOutput("mymap"),
                                           box( width = 12,
                                             title="Overview"
                                             ,status= "primary"
                                             ,solidHeader = TRUE
                                             ,collapsible = TRUE
                                             ,DT::dataTableOutput("table")
                                             
                                           )#end of box
                                         )#end of column
                                        )
                                      )
                                   )
                               )
                                       )))
              
              )
                         
                          
  
    

