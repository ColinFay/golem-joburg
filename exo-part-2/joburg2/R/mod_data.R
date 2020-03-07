#' data UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_data_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      col_6(
        h3("Preview dataset"),
        numericInput(
          ns("rows"), 
          "Numbers of rows to show", 
          min = 1, 
          max = nrow(run), 
          value = 10
        ), 
        DT::dataTableOutput(
          ns("dt_rows")
        )
      ),
      col_6(
        h3("Preview Specific Activity"),
        selectInput(
          ns("type"), 
          "Type of Activity to show", 
          choices = unique(run$Title), 
          selected = unique(run$Title)[1]
        ), 
        DT::dataTableOutput(
          ns("dt_type")
        ) 
      )
    )
  )
}

#' data Server Function
#'
#' @noRd 
mod_data_server <- function(input, output, session){
  ns <- session$ns
  
  output$dt_rows <- DT::renderDataTable({
    head_run(input$rows)
  }, options = list(
    scrollX = TRUE
  ))
  
  output$dt_type <- DT::renderDataTable({
    filter_run(input$type)
  }, options = list(
    scrollX = TRUE
  ))
  
}

## To be copied in the UI
# 

## To be copied in the server
# 

