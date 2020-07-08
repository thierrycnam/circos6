server <- function(input, output, session) {

  output$contents <- renderTable({
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, it will be a data frame with 'name',
    # 'size', 'type', and 'datapath' columns. The 'datapath'
    # column will contain the local filenames where the data can
    # be found.
    inFile <- input$file1

    if (is.null(inFile))
      return(NULL)

    read.csv(inFile$datapath, header = input$header)
  })

  output$circos1 <- renderPlot({
    infile_1 <- input$file1$datapath
    if (is.null(infile_1)) {
      return(NULL)
    } else {
      plot_circos(infile_1)
    }
  })
}
