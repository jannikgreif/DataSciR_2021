#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggpubr)
library(tidyverse)

load("data.RData")

ui <- fluidPage(

    # Application title
    titlePanel("Sentiment Analysis"),

    # Sidebar with slider inputs
    sidebarLayout(
        sidebarPanel(
            selectInput("names",
                               "Select player:",
                               choices = data$Player %>% unique(),
                               selected = "Clint Capela")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("corPlot")
        )
    )
)


server <- function(input, output) {
    output$corPlot <- renderPlot(ggplot(
        data %>% filter(Player == input$names),
        aes(x = avg_sentiment, y = BPM)) + 
            geom_point(alpha = 0.2) + 
            geom_smooth(method = "lm", se = FALSE, color = "red") + 
            stat_cor(method = "pearson", cor.coef.name = "r", size = 3) + 
            scale_y_continuous(limits = c(-20, 35)) + 
            facet_grid(~ sentiment_lexicon, scales = "free_x") + 
            labs(
                title = "Relationship between the Average Sentiment of Tweets Players received\nwithin 24 Hours before Games and their BPM Value within the Games",
                subtitle = "For different Players and Sentiment Lexicons between the Seasons 2017-18 and 2018-19", 
                x = "Average Tweet Sentiment",
                y = "Box Plus/Minus (BPM)"
            ) + 
            theme(
                plot.title = element_text(hjust = 0.5), 
                plot.subtitle = element_text(hjust = 0.5)
            ))
}

# Run the application 
shinyApp(ui = ui, server = server)


 
    