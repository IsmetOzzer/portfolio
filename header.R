argonHeader <- argonDashHeader(
  
  gradient = FALSE,
  color = "secondary",
  top_padding = 8,
  bottom_padding = 8,
  height = 600,
  mask = TRUE,
  background_img = "https://images.pexels.com/photos/3796547/pexels-photo-3796547.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  opacity = 2,
  argonH1("Can religion influence decision-making?", 
          display = 1) %>% argonTextColor(color = "white"),
  argonLead("What ") %>% argonTextColor(color = "white")
  
)