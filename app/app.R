library(shiny)
library(tidyverse)

# --- 1. Load and Prep Data from the Web ---
# Pulling the raw CSV directly from IBM's public repository
data_url <- "https://raw.githubusercontent.com/IBM/telco-customer-churn-on-icp4d/master/data/Telco-Customer-Churn.csv"
churn_data <- read_csv(data_url)

# Quick cleaning: R likes categorical data as "factors" for plotting
churn_data <- churn_data %>%
  mutate(across(where(is.character), as.factor))

# --- 2. The UI (What the user sees) ---
ui <- fluidPage(
  titlePanel("Strategic Churn Analysis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select a customer attribute to see how it impacts churn."),
      
      # The Dropdown Menu
      selectInput("feature", 
                  label = "Analyze Feature:",
                  choices = c("Contract", "InternetService", "PaymentMethod", "TechSupport"),
                  selected = "Contract")
    ),
    
    mainPanel(
      # Where the chart will show up
      plotOutput("churnPlot")
    )
  )
)

# --- 3. The Server (The backend logic) ---
server <- function(input, output) {
  
  output$churnPlot <- renderPlot({
    # We take the user's input and plot it
    ggplot(churn_data, aes(x = .data[[input$feature]], fill = Churn)) +
      geom_bar(position = "fill") +
      scale_y_continuous(labels = scales::percent) +
      scale_fill_manual(values = c("No" = "#A0A0A0", "Yes" = "#FF4B4B")) + # Grey for stay, Red for churn
      theme_minimal() +
      labs(y = "Percentage of Customers", 
           x = input$feature, 
           title = paste("Churn Risk by", input$feature))
  })
}

# --- 4. Run the App ---
shinyApp(ui = ui, server = server)
