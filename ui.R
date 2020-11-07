library(shiny)

shinyUI(
    navbarPage("Technical Specification Analysis",
               tabPanel("Analysis",
                        fluidPage(
                            titlePanel("The relationship between various factors and acceleration"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("MPG" = "mpg",
                                                  "Number of cylinders" = "cylinders",
                                                  "Displacement (cu.in.)" = "displacement",
                                                  "Weight (lb/1000)" = "weight",
                                                  "acceleration (sec)" = "acceleration"
                                                ))
                                ),
                                
                                mainPanel(
                                    h3(textOutput("caption")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("Plot", plotOutput("carsBP"))
                                    )
                                )
                            )
                        )
               ),
               tabPanel("About the Data Set",
                        
                        h3("Kaggle autompg-data"),
                        helpText("We have used the 'Auto-MPG Data' datasetto understand how weight (wt), horsepower (hp), and number of cylinders (cyl) affects the acceleration of a car.",
                                 "The dataset contains the technical specifications of the various vehicles. The dataset is downloaded from the UCI Machine Learning Repository."),
                        
                        h3("Important"),
                        p("A data frame with 398 observations on 6 variables."),
                        
                        a(" https://archive.ics.uci.edu/ml/datasets/auto+mpg")
               ),
               tabPanel("More Data Detail",
                        h2("Auto-mpg dataset"),
                        hr(),
                        h3("Description"),
                        helpText("The data is technical spec of cars.",
                                 "The dataset is downloaded from UCI Machine Learning Repository"),
                        
                        h3("Format"),
                        p("A data frame with 398 observations on 6 variables."),
                        
                        p("  [, 1]   mpg         Miles/(US) gallon"),
                        p("  [, 2]	 cylinder	 Number of cylinders"),
                        p("  [, 3]	 displacement	 Displacement (cu.in.)"),
                        p("  [, 4]	 horsepower	 Gross horsepower"),
                        p("  [, 5]	 weight	 Weight(lbs)"),
                        p("  [, 6]   acceleration acceleration(sec)"),
                        h3("Source"),
                        
                        p("This dataset was taken from the StatLib library which is",
                          "maintained at Carnegie Mellon University. The dataset was",
                          "used in the 1983 American Statistical Association Exposition.")
               ),
               tabPanel("Go back to my Github repository",
                        a("https://github.com/Gagan081998/Developing_data_products/tree/main/Shinyapp"),
                        hr(),
                        h4("I hope you like the Shiny App"),
                        h4("The name of the repository is Developing Data Products/Shinyapp")
               )
    )
)