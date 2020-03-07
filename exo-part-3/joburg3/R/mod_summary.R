#' summary UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_summary_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      col_12(
        h3("Timeline"), 
        dateRangeInput(
          ns("date"), 
          "Choose start and date", 
          min = min(run$Date), 
          max = max(run$Date), 
          start = min(run$Date) - 30, 
          end = max(run$Date)
        ),
        plotOutput(
          ns("plot")
        ) %>% tagAppendAttributes(
          class = "plottohide",
          onclick = "alert('You clicked on the plot!')"
        )
      ), 
      col_12(
        tags$button(
          "Toggle plot visibility", 
          onclick = "$('.plottohide').toggle()"
        )
      )
    )
  )
}

#' summary Server Function
#'
#' @noRd 
mod_summary_server <- function(input, output, session){
  ns <- session$ns
  
  output$plot <- renderPlot({
    filter_and_draw(
      input$date[[1]],
      input$date[[2]]
    )
  })
  
}

## To be copied in the UI
# 

## To be copied in the server
# 

