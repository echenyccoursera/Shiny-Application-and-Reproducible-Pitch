# server.R
server <- function(input, output) {
  
  # Histogram of area of pores space in petroleum rock samples
  output$distPlot <- renderPlot({
    
    x    <- rock$area
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = "#75AADB", border = "black",
         xlab = "area of pores space, in pixels out of 256 by 256",
         main = "Histogram of area of pores space in petroleum rock samples")
  })
}