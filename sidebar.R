Isidebar <- argonDashSidebar(
  vertical = T,
  skin = "light",
  background = "white",
  size = "md",
  side = "left",
  id = "my_sidebar",
  
  argonSidebarHeader(title = "Main Menu"),
  
  argonSidebarMenu(
    argonSidebarItem(
      tabName = "intro",
      icon = argonIcon(name = "book-bookmark", color = "info"),
      "Introduction"
    ),
    
    argonSidebarItem(
      tabName = "dataexp",
      icon = argonIcon(name = "chart-bar-32", color = "info"),
      "Data Exploration"
    ),
    
    argonSidebarItem(
      tabname = "assumptions",
      icon = argonIcon(name = "ruler-pencil", color = "info"),
      "Assumptions"
    ),
    
    argonSidebarItem(
      tabName = "model",
      icon = argonIcon(name = "building", color = "info"),
      "Model Building"
    ),
    
    argonSidebarItem(
      tabName = "robust",
      icon = argonIcon(name = "app", color = "info"),
      "Robust Model"
    ),
    
    argonSidebarItem(
      tabName = "non-parametric",
      icon = argonIcon(name = "compass-04", color = "info"),
      "Non-parametric"
    ),
    
    argonSidebarItem(
      tabName = "discussion",
      icon = argonIcon(name = "chat-round", color = "info"),
      "Discussion"
    )
  ),
  
  argonSidebarDivider()
  
)
