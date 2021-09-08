
output$skimTable <- renderTable({
  if (input$skim == "Factor") 
    return(tez %>% dlookr::diagnose_category()) 
  else 
    return(tez %>% dlookr::diagnose_numeric())
})


output$plot_bar_output <- renderPlot({
  
  if (input$plot_bar == "All")
    return(tez %>% dplyr::ungroup() %>% dplyr::select(-intuRelig_code,
                                                      -okRelig_code) %>%
             plot_bar(by_position = "dodge",
                      ggtheme = theme_minimal()))
  else
    return(tez %>% dplyr::select(-intuRelig_code, -okRelig_code) %>% 
             plot_bar(by = input$plot_bar, by_position = "dodge",
                      ggtheme = theme_minimal()))
  
})
