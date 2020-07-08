
ui <-
  navbarPage(
    "Circos",
    tabPanel("Data",
             fluidPage(
               sidebarLayout(
                 sidebarPanel(
                   fileInput("file1", "Choose CSV File",
                             accept = c(
                               "text/csv",
                               "text/comma-separated-values,text/plain",
                               ".csv")
                   ),
                   tags$hr(),
                   checkboxInput("header", "Header", TRUE)
                 ),
                 mainPanel(
                   p("The data comes from Patients in Japan who have been vaccinated on several timepoints against Flu."),
                   tableOutput("contents")
                 )
               )
             )
    ),
    tabPanel("Circos",
             fluidPage(
               sidebarLayout(
                 sidebarPanel(
                 ),
                 mainPanel(
                   h3("Circos plot"),
                   plotOutput("circos1")
                 )
               )
             )
    )
  )
