Developing Data Products - Course Project
========================================================
author: Stuart Ward
date: September 24, 2015 

Problem Description
========================================================
<font size="5">

[Slide 2 of 5]

When determining which car to purchase, it would be helpful to determine the fuel efficiency of the car.

Fuel efficiency can have a dramatic impact on the total operating cost of the car.

What is needed is a way to predict the miles per gallon (MPG) of a car based on two variables:

- The number of **cylinders** in the car's engine
- The **weight** of the car

</font>

Solution Overview
========================================================
<font size="5">

[Slide 3 of 5]

A Shiny application was developed to allow for the prediction of MPG based on the two variables (cylinders and weight)

The Shiny application will include the following functionality

- Allow input of the two variables (cylinders and weight)
- Calculate the predicted MPG based on the input values
- Display the results of the input values and the prediction of MPG

</font>

R Code for the Linear Regression Model
========================================================
<font size="5">

[Slide 4 of 5]

The following R code (embedded in this presentation) is utilized to create a linear regression model.
The "mtcars" data set provides the source data for the model.

```r
data("mtcars")
lm(mpg ~ cyl + wt, data = mtcars)
```

```

Call:
lm(formula = mpg ~ cyl + wt, data = mtcars)

Coefficients:
(Intercept)          cyl           wt  
     39.686       -1.508       -3.191  
```
The Shiny application will utlize a function created with the intercept and coefficients to predict the MPG.

</font>

Utilizing the Shiny Application
========================================================
<font size="5">

[Slide 5 of 5]

The Shiny application is hosted on the R Studio servers and can accessed through this link:
https://stuartward.shinyapps.io/DataProdCourseProject

After the values for the number of cylinders and weight are selected, pressing the "Predict MPG" function will pass those 
values to the prediction function and then will return the predicted MPG to the user interface.

As expected, as the number of cyclinders increases, the predicted MPG decreases. Similarly, as the weight incresases, the predicted MPG decreases.

</font>
