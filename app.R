# library(shiny)
# library(argonDash)
# library(argonR)
# library(shinyWidgets)
# library(dplyr)
# library(flextable)
# library(report)
# library(reactable)
# library(skimr)
# library(dlookr)
# library(performance)
# library(see)
# library(car)
# library(dplyr)
# library(tidyr)
# library(pastecs)
# library(broom)
# library(ggplot2)
# library(ggfortify)
# library(plotly)
# library(ggpubr)
# library(GGally)
# library(performance)
# library(modelbased)
# library(DataExplorer)

# template
source("header.R")
source("sidebar.R")
source("intro/intro_tab.R")
source("dataexp/dataexp_tab.R")
source("body/body.R")

# App
shiny::shinyApp(
  
  ui = argonDashPage(
    title = "Ismet Thesis",
    author = "Ismet Ozer <myemail.com>",
    description = "Interactive visualization of Ismet's Thesis Data",
    
    sidebar = Isidebar,
    header = argonHeader,
    
    body = argonBody
    
  ),
  
  server = function(input, output) {
    
    # Skim table
    output$skimTable <- renderTable({
      if (input$skim == "Factor") 
        return(tez %>% skim() %>% yank("factor")) 
      else 
        return(tez %>% dlookr::diagnose_numeric())
    })
    
    # Participant distribution
    output$plot_bar_output <- renderPlot({
      
      if (input$plot_bar == "All")
        return(tez %>% dplyr::ungroup() %>% dplyr::select(-intuRelig_code,
                                                          -okRelig_code) %>%
                 plot_bar(by_position = "stack",
                          ggtheme = theme_minimal()))
      else
        return(tez %>% dplyr::select(-intuRelig_code, -okRelig_code) %>% 
                 plot_bar(by = input$plot_bar,
                          ggtheme = theme_minimal()))
      
    })
    
    input_mapper <- list("IGT" = tez$IGT,
                         "IGT_1" = tez$IGT_1,
                         "IGT_2" = tez$IGT_2,
                         "IGT_3" = tez$IGT_3,
                         "IGT_4" = tez$IGT_4,
                         "IGT_5" = tez$IGT_5)
    
    #IGT stat.desc
    output$IGTstat <- DT::renderDT({
      IGT_desc_table <- by(input_mapper[input$IGTstat_input], tez$group,
         stat.desc, basic = F, norm = T)
      as.data.frame(IGT_desc_table[input$IGTstat_group_input]) %>% 
        DT::datatable() %>% DT::formatRound(columns = 1, 
                                            digits = 2)
    })
    
    
    #Outliers Table
    output$outliersTable <- DT::renderDT({
      tez %>% ungroup() %>% dplyr::select(-id) %>%
        diagnose_outlier() %>% 
        DT::datatable() %>% DT::formatRound(columns = 3:6,  
                                            digits = 2)
    })
    
  }
  
)
