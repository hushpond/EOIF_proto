library(shiny)
library(shinyMobile)
shiny::shinyApp(
  ui = f7Page(
    title = "Risk Manager",
    f7SplitLayout(
      navbar = f7Navbar(title = "Split Layout", hairline = FALSE, shadow = TRUE),
      sidebar = f7Panel(
        inputId="sidebar",
        title = "Others",
        side = "left",
        theme = "light",
        
        f7PanelMenu(
          id = "menu",
          f7PanelItem(tabName = "BIS", title = "BIS", icon=f7Icon("email"), active = TRUE),
          
        ),
        effect = "reveal"
      ),
      f7Items(
        f7Item(
          tabName = "tab1"
        ),
        f7Item(
          tabName = "tab2"
        )
      )
    ),
    toolbar = f7Toolbar(
      position = "bottom",
      f7Link(label = "Source", src = "https://finlife.fss.or.kr/deposit/selectDeposit.do?menuId=2000100")
    ),
  ),
  server = function(input, output) {}
)
