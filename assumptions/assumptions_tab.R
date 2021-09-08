source("components/introducing_data.R")

assumptions_tab <- argonTabItem(
  
  tabName = "assumptions",
  
  argonH1("Assumptions", display = 4),
  
  argonRow(
   introducing_data_card()
  )
)