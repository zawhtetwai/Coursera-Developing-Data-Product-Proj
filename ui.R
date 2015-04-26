require(rCharts)

# Define UI 
shinyUI(fluidPage(

  # Sidebar 
  sidebarLayout(
   sidebarPanel(
   uiOutput("country"),
   uiOutput("year"),      
   helpText("Self Service Life Expectancy Analysis"),
   helpText("This application aims to provide you with the life expectancy insight", 
            "for all over the countries from year 1990 to 2012."), 
   helpText("Step. 1: Choose the country you are interested. "), 
   helpText("Step. 2: Move the slider for the year range (between 1990 and 2012)."), 
   helpText("There are two plots in the main screen (right). ",
		"Top is for Life Expectancy at Birth.",
		"Bottom is for Life Expectancy at 60."),
   helpText("Data for this project are obtained ", 
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