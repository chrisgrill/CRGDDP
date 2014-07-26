library(shiny)

shinyUI(pageWithSidebar(

  # Application title
  headerPanel("MPG Fit Test Visualization"),

  # Sidebar with selections for model factors
  sidebarPanel(
  checkboxGroupInput("factors","Factors",choices=c("gear","am","carb","cyl","hp","wt"),selected="gear"),
strong("About:"),
div("Uses the selected factors from the mtcars dataset in a linear model using lm().
Plots are generated using plot(fit) to give a quick visual reference of how each factor effects the model.
Summary information for the model is displayed below the plot section."),
  strong("Usage:"),
  br(),
  div("Select the checkbox next to the factors from the mtcars dataset you would like included in the model.
Plots and summary for the model are updated automatically.")
),
  # Show a plot of the model
  mainPanel(
    plotOutput("distPlot", height=500),
    verbatimTextOutput("fitSummary")
  )
))
