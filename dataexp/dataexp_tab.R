source("components/introducing_data.R")

dataexp_tab <- argonTabItem(
  tabName = "dataexp",
  
  argonH1("Data Exploration", display = 4),
  
  argonRow(
    
    introducing_data_card()
      
  ),
    
  br(),
  
  argonRow(
    
    argonCard(
      width = 12,
      icon = icon("XXX"),
      status = "success",
      shadow = T,
      border_level = 2,
      hover_shadow = T,
      title = "Distribution of Participants",
      
      argonRow(
        argonColumn(width = 8,
          selectInput(
            inputId = "plot_bar",
            label = "Group by:",
            choices = c("All",
                        "Group" = "group",
                        "Sex" = "sex",
                        "Impulsivity" = "barratt_code",
                        "Sensation-seeking" = "sss_code")
          )
        ),
        
        argonColumn(width = 12,
                    plotOutput("plot_bar_output")
        )
        
      )
    )
    
  ),
  
  
  br(),
  
  
  argonRow(
    
    argonCard(
      width = 12,
      icon = icon("XXX"),
      status = "success",
      shadow = T,
      hover_shadow = T,
      border_level = 2,
      
      title = "IGT Statistics by Group",
      
      argonRow(
        argonColumn(width = 2,
                    selectInput(
                      inputId = "IGTstat_input",
                      label = "Outcome Variable:",
                      choices = c("IGT",
                                  "IGT_1",
                                  "IGT_2",
                                  "IGT_3",
                                  "IGT_4",
                                  "IGT_5")
                    )
          
        ),
        
        argonColumn(width =2,
                    selectInput(
                      inputId = "IGTstat_group_input",
                      label = "Group:",
                      choices = c("Punishing",
                                  "Rewarding",
                                  "Control")
                    )
        )
      ),
        
      argonRow(
        argonColumn(width = 8,
               DT::DTOutput("IGTstat")
        )
      )
        
      
    )
  ),
  
  
  br(),
  
  
  argonRow(
    
    argonCard(
      width = 12,
      icon = icon("XXX"),
      status = "success",
      shadow = T,
      hover_shadow = T,
      border_level = 2,
      
      title = "Analysis of Outliers",
      
      argonRow(
        argonColumn(width = 12,
                    DT::DTOutput("outliersTable"))
      )
    )
  )
  
)
