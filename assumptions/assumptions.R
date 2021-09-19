assumptions_tab <- argonTabItem(
  tabname = "assumptions",
  
  argonH1("Assumptions for ANCOVA", display = 1),
  
  argonRow(
    
    argonCard(
      width = 12,
      icon = icon("xxx"),
      status = "success",
      shadow = T,
      border_level = 2,
      hover_shadow = T,
      title = "1. Indipendence of Covariates from the IV",
      "ANCOVA assumes that the covarite is not related to the independent variable.
      We can check this assumption by creating an ANOVA model with the covariate as the DV and the religious priming groups as the IV in our study.",
      
      argonRow(
        selectInput(
          inputId = "assumption1_input",
          label = "Covariate",
          choices = c("Impulsiveness = barratt_total",
                      "Sensation-seeking = sss_total")
        ),
      ),
      
      argonRow(
        
      )
    )
  )
  
)