shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Car selection"),
        sidebarPanel(
            h5('This website predicts what car will you buy considering two variables. For that purpose, the mtcars data frame has been used.'),
            selectInput("cylinders","Select the number of cylinders:",choices=c(4,6,8)),
            radioButtons("transmission","Select the transmission type:",
                         list("0: Automatic"=0, "1: Manual"=1)),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Results of prediction'),
            h4('Selected number of cylinders'),
            verbatimTextOutput("cyl"),
            h4('Selected transmission type'),
            verbatimTextOutput("trans"),
            h4('Cars that fulfil these conditions (and some data related to them)'),
            verbatimTextOutput("cars")
        )
    )
)