require("shiny")
require("rCharts")
source("data_process.R")
options(RCHART_WIDTH = 500)
birth_exp <- load_birth_exp()
sixty_exp <- load_sixty_exp()
#both data set are having same countries
#getting from one data set is enough
countries <-  unique(unlist(birth_exp$Country))
minYear <- as.numeric(min(birth_exp$Year))
maxYear <- as.numeric(max(birth_exp$Year))

shinyServer(
  function(input, output) { 
  #create dropdown menu loading
  output$country <- renderUI({
    selectInput(inputId= "country", 
		    label = "Select a Country:",
		    choices = setNames(as.list(countries), countries),
		    selectize=FALSE
		   )	    
  })
    
  #create year slider
  output$year <- renderUI({
  	sliderInput("year",
                  label = "Years to display:",
                  min = minYear ,
                  max = maxYear ,
                  value = c(minYear , maxYear ), 
                  format = "0000")
  })

  #create output for plot (main panel)
  output$birth_exp_plot <- renderChart2({
    selected <- input$country
    
    birth_exp_country <- subset(birth_exp, Country == selected & Year %in% seq(input$year[1], input$year[2], 1))
    h1 <- hPlot(
      x = "Year", 
      y = "lex", 
      group = "Gender", 
      data = birth_exp_country, 
      type = "line")

    h1$colors(c("red", "blue"))
    h1$yAxis(title = list(enabled = TRUE, text = 'Life Expectancy at Birth'))
    return(h1)
  })
 
  #create output for plot (main panel)
  output$sixty_exp_plot <- renderChart2({
    selected <- input$country
    
    sixty_exp_country <- subset(sixty_exp, Country == selected & Year %in% seq(input$year[1], input$year[2], 1))
    h2 <- hPlot(
      x = "Year", 
      y = "lex", 
      group = "Gender", 
      data = sixty_exp_country, 
      type = "line")

    h2$colors(c("orange", "green"))
    h2$yAxis(title = list(enabled = TRUE, text = 'Life Expectancy at 60s'))
    return(h2)
  })
     
} # end of function(input, output)
)
