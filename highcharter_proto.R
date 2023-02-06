library(shiny)
library(highcharter)

ui <- fluidPage(
  titlePanel("Korean Saving Banks Interest Rate Movement"),
  sidebarLayout(
    sidebarPanel(
      selectInput("bank", "Select a Bank:",
                  c("A저축", "B금융", "C상호저축", "DD뱅크"))
    ),
    mainPanel(
      highchartOutput("interest_rate_chart")
    )
  )
)

server <- function(input, output) {
  output$interest_rate_chart <- renderHighchart({
    bank_data <- data.frame(
      date = seq.Date(from = as.Date("2021-01-01"),
                      to = as.Date("2021-12-31"),
                      by = "month"),
      rate = cumsum(rnorm(12))
    )
    #데이터는...어디서     
    highchart() %>% 
      hc_add_series(bank_data, "line", hcaes(x = date, y = rate),
                    name = input$bank) %>% 
      hc_xAxis(type = "datetime", labels = list(format = "{value:%Y-%m}")) %>% 
      hc_yAxis(title = list(text = "Interest Rate (%)"))
  })
}

shinyApp(ui, server)
