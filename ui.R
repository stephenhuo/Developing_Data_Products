 ## UI.R
 
 library(shiny) 
 shinyUI(pageWithSidebar( 
   headerPanel("Monthly NetPay Calculator"), 
   sidebarPanel( 
     h4('Annual Salary'), 
     numericInput('yearlySalary', 'Total Gross Pay (£)', 30000), 
    
     h5('Deductions'),
     numericInput('tax', 'Tax (%)', 20), 
     numericInput('pension', 'Pension (%)', 4), 
    numericInput('nationalInsurance', 'National Insurance', 10)

   ), 
   mainPanel( 
     h4('Monthly NetPay (£)'), 
     textOutput("monthlyNetPay"), 

     br(), 
     h4('Instructions'), 
     helpText("This application is for people to calculate their monthly Netpay with the Annual Gross Pay. ."), 
     code("Monthly NetPay"), 
     helpText("Enter the Annual salary and modify the relate deduction to calculate the monthly netpay.")

   ) 
 )) 
