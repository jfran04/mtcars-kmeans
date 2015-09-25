shinyUI(fluidPage(
  
  # Application title
  titlePanel("K-Means Clustering"),
  

  # Sidebar positioned on the right
  # with a slider input for the number of bins
  sidebarLayout(position = "right",
    sidebarPanel(
    selectInput('xcol', 'X Variable', names(mtcars)),
    selectInput('ycol', 'Y Variable', names(mtcars)),
    selectInput('zcol', 'Z Variable', names(mtcars),
                selected=names(mtcars)[[3]]),
    sliderInput("clusters",
                "Cluster count",
                min = 1,  max = 5, value = 2)
    
  ),
  mainPanel(
    h1("3 Variable K-Means with mtCars"),
    p("This app allows you to perform a k-means analysis with any 3 variables from the
       mtcars data set.  Directions:  (1) Select the 3 variables of intrest, 
      and (2) selct the number of clusters."),
    br(),
    plotOutput('plot1')
  )
))
)