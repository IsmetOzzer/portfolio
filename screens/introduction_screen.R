introduction_screen <- argonRow(
    
  argonDashHeader(
    
    gradient = F,
    color = "secondary",
    top_padding = 8,
    bottom_padding = 8,
    separator = T,
    separator_color = "primary",
    
    argonH1("Do religious people decide differently with religion in mind?", display = 3) %>% argonTextColor(color = "black"),
    argonLead("I can hear you say 'most likely'. Religion and God have some guidances which will lead to reward
                if you abide by them, and will lead to punishment if you defy them. The important question becomes, 
                in that case, how so?
                
                ") %>% argonTextColor(color = "black")
    
  ),
  argonDashHeader(
    gradient = F,
    top_padding = 8,
    bottom_padding = 8,
    background_img = "https://images.pexels.com/photos/301614/pexels-photo-301614.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    
    argonRow(
      argonH1("What might influence your decisions?", display = 3),
      
      br()
    ),
    argonRow(
      
      argonTabSet(
        id = "intro_tab",
        card_wrapper = T,
        horizontal = T,
        size = "lg",
        width = 12,
        iconList = list(
          argonIcon("fat-remove"),
          argonIcon("like-2"),
          argonIcon("curved-next")
        ),
        
        argonTab(
          tabName = "Punishment",
          active = T,
          introPunishmentText
        ),
        
        argonTab(
          tabName = "Reward",
          active = T,
          introRewardText
        )
        
        # argonTab(
        #   tabName = "Future",
        #   active = T,
        #   introFutureText
        # )
        
        
      )
    )
  )
)