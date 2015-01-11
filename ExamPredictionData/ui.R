library(shiny)
shinyUI(
pageWithSidebar(
# Application title
headerPanel("EXAM RESULT PREDICTION"),

sidebarPanel(
numericInput('id1', 'Select Roll Number:', 0, min = 1, max = 200, step = 1),
checkboxGroupInput("id2", "Select Invigilator/Invigilators",
c("John Adams " = "John Adams",
"Samantha Huges" = "Samantha Huges",
"Jade Collins" = "Jade Collins")),
numericInput('id3', 'Enter Physics Marks:', 0, min = 1, max = 100, step = 1),
numericInput('id4', 'Select Maths Marks:', 0, min = 1, max = 100, step = 1),
numericInput('id5', 'Select Biology Marks:', 0, min = 1, max = 100, step = 1),
dateInput("date", "Date of birth:"),
submitButton('Submit')
),
mainPanel(
h4('STUDENT DETAILS:'),
h4('Your Roll no:'),
verbatimTextOutput("oid1"),
h4('Your Invigilator/Invigilators:'),
verbatimTextOutput("oid2"),
h4('Your Marks in Physics:'),
verbatimTextOutput("oid3"),
h4('Your Marks in Maths:'),
verbatimTextOutput("oid4"),
h4('Your Marks in Biology:'),
verbatimTextOutput("oid5"),
h4('Date of Birth:'),
verbatimTextOutput("odate"),
h4('Your Final Percentage:'),
verbatimTextOutput("prediction"),
strong("ABOUT THIS APP:"),
p("This is shiny application which predicts your percentage as per your input.
   The user panel of the lefthand side ask for the following inputs:"),
p("1) your Roll number: which is usually given to each student to particularly identify  everyone uniquely and maximum of the students being 200."),

p("2) your Invigilator/Invigilators: Names of teachers who are supposed to check your  exam papers"),

p("3) The papers student gave where physics,biology and maths whose marks they were  supposed to enter in the numeric input having minimmum 0,maximum 100 and a step  size of 1."),

p("4) The date field mentions the date of birth of the students."),

p(" The submit button sends the data to server.R,which processes the required data to  give a predictive outcome,that is it calculates the marks of the student who appeared  the three exams."),

p(" The display side,on the right side of the window,displays the student information as  per entered and gives the predicted output.")
)
)
)