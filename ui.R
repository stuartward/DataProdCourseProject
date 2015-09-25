library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Miles Per Gallon (MPG) Prediction Application"),
        sidebarPanel(
                sliderInput("cyl", 'Select the number of cylinders (4, 6, or 8)', 4, min = 4, max = 8, step = 2),
                sliderInput("wt", 'Select the weight (2000, 3000, or 4000) in pounds', 2000, min = 2000, max = 4000, step = 1000),
                h4('Press the "Predict MPG" button to view the predicted MPG'),
                submitButton('Predict MPG')
        ),
        mainPanel(
                h2('Documentation'),
                h3('Instructions for using this application'),
                h4('Step 1: In the side panel on the left, select the number of cylinders'),
                h4('Step 2: In the side panel on the left, select the weight'),
                h4('Step 3: In the side panel on the left, press the "Predict MPG" button'),
                h4('Step 4: In the main panel below, view the results of the values you selected and predicted MPG'),
                br(),
                h4('The value utlized for the number of cylinders'),
                verbatimTextOutput("ocyl"),
                h4('The value utlized for the weight'),
                verbatimTextOutput("owt"),
                h4('The result of prediction, given in MPG'),
                verbatimTextOutput("prediction")
        )
))