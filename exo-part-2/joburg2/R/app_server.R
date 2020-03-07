#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  callModule(mod_data_server, "data_ui_1")
  callModule(mod_summary_server, "summary_ui_1")
  callModule(mod_about_server, "about_ui_1")
}
