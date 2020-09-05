# ui.R
ui <- fluidPage(
  
  # App title ----
  titlePanel("Shiny"),
  
  # Sidebar 
  sidebarLayout(
    
    sidebarPanel(
      
      sliderInput(inputId = "bins",
                  label = "Number of bins",
                  min = 1,
                  max = 30,
                  value = 5)
      
    ),
    # Main panel  
    mainPanel(
      plotOutput(outputId = "distPlot")
    )
  )
)

