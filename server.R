library(shiny) 
 shinyServer( 
   function(input, output){ 
     output$monthlyNetPay <- renderText({ calculatemonthlyNetPay(input$yearlySalary, input$tax, input$pension,
                                                                 input$nationalInsurance
                                                                 ) }) 

   }
 ) 
 
 
  calculatemonthlyNetPay <- function (yearlySalary,tax,pension, nationalInsurance)  
 { 
   result <- yearlySalary -
   yearlySalary*(tax/100) -  yearlySalary*(pension/100)  - yearlySalary*(nationalInsurance/100)  / 12
   return(round(result, digits = 2)) 
 }  
 
 
