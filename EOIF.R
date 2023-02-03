library(shiny)
library(shinyMobile)

shinyApp(
  ui = f7Page(
    title = "Sub Navbar",
    f7TabLayout(
      panels = tagList(
        f7Panel(title = "Left Panel", side = "left", theme = "light", "Blabla", style = "cover")
      ),
      navbar = f7Navbar(
        title = "RISK MANAGING",
        hairline = FALSE,
        shadow = TRUE,
        leftPanel = TRUE,
        rightPanel = TRUE,
        subNavbar = f7SubNavbar(
          f7Button(label = "BIS"),
          f7Button(label = "자기자본비율"),
          f7Button(label = "ROE")
        )
      ),
      f7Tabs(
        animated = TRUE,
        #swipeable = TRUE,
        f7Tab(
          tabName = "Tab1",
          icon = f7Icon("money_dollar_circle"),
          active = TRUE,
          "Tab 1"
        ),
        f7Tab(
          tabName = "Tab2",
          icon = f7Icon("tortoise"),
          active = FALSE,
          "Tab 2"
        ),
        f7Tab(
          tabName = "Tab3",
          icon = f7Icon("xmark_octagon"),
          active = FALSE,
          "Tab 3"
        )
      )
    )
  ),
  server = function(input, output) {}
)

