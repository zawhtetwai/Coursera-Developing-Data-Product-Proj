require(rCharts)

# Define UI 
shinyUI(fluidPage(

  # Sidebar 
  sidebarLayout(
    sidebarPanel(
	uiOutput("country"),
      uiOutput("year"), 
      helpText("Data reflects the life expectancy ", 
               "for male and female at birth and at age of 60s.", 
               "The analysis covers from year 1990 to 2012 for all countries. ", 
                "Data for this project are obtained ", 
               "from the Global Health Observatory (GHO).", 
                "http://apps.who.int/gho/data/node.main.3?lang=en")              
    ),

    # Show the plot 
    mainPanel(
      showOutput("birth_exp_plot", "highcharts"),
	showOutput("sixty_exp_plot", "highcharts")
    )
  )
))