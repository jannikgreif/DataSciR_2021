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
library(ggwordcloud)

load("data.RData")

ui <- fluidPage(
    
    # Application title
    titlePanel("Wordclouds"),
    
    # Sidebar with slider inputs
    sidebarLayout(
        sidebarPanel(
            selectInput("names",
                        "Select player:",
                        choices = data$Player %>% unique(),
                        selected = "Clint Capela")
        ),
        mainPanel(
            plotOutput("wordcloudPlot")
        )
    )
)


server <- function(input, output) {
    output$wordcloudPlot <- renderPlot(ggplot(
        data %>% filter(Player == input$names),
        aes(label = word, size = rel_freq_scaled, color = rel_freq_color)) + 
            geom_text_wordcloud_area(rm_outside = TRUE) + 
            scale_size_area(max_size = 8) + 
            scale_color_gradient2(low = "blue", high = "red") +
            facet_grid(~ extreme_type, scales = "free", space = "free") +
            theme_minimal()
        )
}

# Run the application 
shinyApp(ui = ui, server = server)