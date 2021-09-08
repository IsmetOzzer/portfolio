introducing_data_card <- argonCard(
  width = 12,
  icon = icon("XXX"),
  status = "success",
  shadow = T,
  border_level = 2,
  hover_shadow = T,
  title = "Introducing Data",
  
  argonRow(
    selectInput(
      inputId = "skim",
      label = "Data Type:",
      choices = c("Factor",
                  "Numeric")
    )
    
  ),
  
  argonRow(
    tableOutput("skimTable")
  )
  
)