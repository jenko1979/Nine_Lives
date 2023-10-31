#
# This is the server logic of your main Shiny web application.
# You can run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
# Make sure all your modules are located in the \R directory so they will be
# sourced and accessible automatically.
#

# Define required server logic
server <- function(input, output, session) {

  # execute widget_gallery_nod module (from jnjtemplates package)
  jnjtemplates::widgets_gallery_server("gallery")

  removeUI("#word")
  removeUI("#action1")
  removeUI("#action2")
  removeUI("#action3")
  removeUI("#action4")
  removeUI("#action5")
  removeUI("#action6")
  removeUI("#action7")
  removeUI("#action8")
  removeUI("#action9")
  removeUI("#text11")
  removeUI("#text12")
  removeUI("#text13")
  removeUI("#text14")
  removeUI("#text15")
  removeUI("#text21")
  removeUI("#text22")
  removeUI("#text23")
  removeUI("#text24")
  removeUI("#text25")
  removeUI("#text31")
  removeUI("#text32")
  removeUI("#text33")
  removeUI("#text34")
  removeUI("#text35")
  removeUI("#text41")
  removeUI("#text42")
  removeUI("#text43")
  removeUI("#text44")
  removeUI("#text45")
  removeUI("#text51")
  removeUI("#text52")
  removeUI("#text53")
  removeUI("#text54")
  removeUI("#text55")
  removeUI("#text61")
  removeUI("#text62")
  removeUI("#text63")
  removeUI("#text64")
  removeUI("#text65")
  removeUI("#text71")
  removeUI("#text72")
  removeUI("#text73")
  removeUI("#text74")
  removeUI("#text75")
  removeUI("#text81")
  removeUI("#text82")
  removeUI("#text83")
  removeUI("#text84")
  removeUI("#text85")
  removeUI("#text91")
  removeUI("#text92")
  removeUI("#text93")
  removeUI("#text94")
  removeUI("#text95")
  
  words5 <- data.frame(id = 1:60, y = c('WORDS','TESTS','PEACH','APPLE','BEACH','CRAZY','DITCH','FARSE',
                                        'PENNY','WOULD','COULD','DREAM','MOVER','HOUSE','RIGHT','LIGHT',
                                        'PROBE','BRAIN','TRAIN','COACH','BOATS','TENTS','SPACE','ALIVE','DEATH','AMUSE',
                                        'ANGLE', 'WHERE','THERE','TIERS','TEARS','BEERS','MOUSE','ROUND','POUND',
                                        'LIGHT','RIGHT','TIGHT','SIGHT','KITES','ERASE','LIARS','CREST','LIONS',
                                        'CREAM','TINGE','TANGO','MANGO','PASTE','HASTE','PARKS','REACT','HOIST',
                                        'PARTY','CHORE','DELAY','TRUTH','ARROW','CATCH','DRONE'))
  
  #output$choice <- renderPrint({datax})
  
  output$action1x <- renderUI({
    actionButton("action1", label = "Submit")
  })
  
  #output$text11x <- renderUI({
    #textInput("text11", label = NULL, value = "")
  #})
  
  #Need to know how to macrofy this
  #for the first word
  observeEvent(input$action1, {
    
    check <- word()
    print(datax)
    
  #looking for exact equality  
  if (substr(datax,1,1) == toupper(input$text11)) {
    flag11 <- 1
  }
  else {flag11 <- 0}
  if (substr(datax,2,2) == toupper(input$text12)) {
    flag12 <- 1
  }
  else {flag12 <- 0}
  if (substr(datax,3,3) == toupper(input$text13)) {
      flag13 <- 1
    }
  else {flag13 <- 0}
  if (substr(datax,4,4) == toupper(input$text14)) {
      flag14 <- 1
    }
  else {flag14 <- 0}
  if (substr(datax,5,5) == toupper(input$text15)) {
      flag15 <- 1
    }
  else {flag15 <- 0}
    
    ncorrect1 <- sum(flag11,flag12,flag13,flag14,flag15)
    print(ncorrect1)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text11)) && (substr(datax,1,1) != toupper(input$text12)) 
        && (substr(datax,1,1) != toupper(input$text13)) && (substr(datax,1,1) != toupper(input$text14))
        && (substr(datax,1,1) != toupper(input$text15))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text11)) && (substr(datax,2,2) != toupper(input$text11)) 
        && (substr(datax,3,3) != toupper(input$text11)) && (substr(datax,4,4) != toupper(input$text11))
        && (substr(datax,5,5) != toupper(input$text11))) {
      flagx11 <- 1
    }
    else {flagx11 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text11)) && (substr(datax,2,2) != toupper(input$text12)) 
        && (substr(datax,2,2) != toupper(input$text13)) && (substr(datax,2,2) != toupper(input$text14))
        && (substr(datax,2,2) != toupper(input$text15))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text12)) && (substr(datax,2,2) != toupper(input$text12)) 
        && (substr(datax,3,3) != toupper(input$text12)) && (substr(datax,4,4) != toupper(input$text12))
        && (substr(datax,5,5) != toupper(input$text12))) {
      flagx12 <- 1
    }
    else {flagx12 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text11)) && (substr(datax,3,3) != toupper(input$text12)) 
        && (substr(datax,3,3) != toupper(input$text13)) && (substr(datax,3,3) != toupper(input$text14))
        && (substr(datax,3,3) != toupper(input$text15))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text13)) && (substr(datax,2,2) != toupper(input$text13)) 
        && (substr(datax,3,3) != toupper(input$text13)) && (substr(datax,4,4) != toupper(input$text13))
        && (substr(datax,5,5) != toupper(input$text13))) {
      flagx13 <- 1
    }
    else {flagx13 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text11)) && (substr(datax,4,4) != toupper(input$text12)) 
        && (substr(datax,4,4) != toupper(input$text13)) && (substr(datax,4,4) != toupper(input$text14))
        && (substr(datax,4,4) != toupper(input$text15))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text14)) && (substr(datax,2,2) != toupper(input$text14)) 
        && (substr(datax,3,3) != toupper(input$text14)) && (substr(datax,4,4) != toupper(input$text14))
        && (substr(datax,5,5) != toupper(input$text14))) {
      flagx14 <- 1
    }
    else {flagx14 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text11)) && (substr(datax,5,5) != toupper(input$text12)) 
        && (substr(datax,5,5) != toupper(input$text13)) && (substr(datax,5,5) != toupper(input$text14))
        && (substr(datax,5,5) != toupper(input$text15))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text15)) && (substr(datax,2,2) != toupper(input$text15)) 
        && (substr(datax,3,3) != toupper(input$text15)) && (substr(datax,4,4) != toupper(input$text15))
        && (substr(datax,5,5) != toupper(input$text15))) {
      flagx15 <- 1
    }
    else {flagx15 <- 0}
    
    ncorrect1x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx11,flagx12,flagx13,flagx14,flagx15))
    print(ncorrect1x)
    
    output$summary11 <- renderText({ncorrect1})
    output$summary12 <- renderText({ncorrect1x})
    
    #output messages 
    if (ncorrect1 == 5) {
      output$messagex <- renderText({"Your first guess is correct!"}) 
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
      #removeUI("#action2")
      #removeUI("#action3")
      #removeUI("#action4")
      #removeUI("#action5")
      #removeUI("#action6")
      #removeUI("#action7")
      #removeUI("#action8")
      #removeUI("#action9")
    }
    else {
      output$messagex <- renderText({"Your first guess is incorrect!"}) 
      output$action2x <- renderUI({
        actionButton("action2", label = "Submit")
      })
    } 
    
    removeUI("#action1")
  }
  )
  
  observeEvent(input$action2, {
    #looking for exact equality
    if (substr(datax,1,1) == toupper(input$text21)) {
      flag21 <- 1
    }
    else {flag21 <- 0}
    if (substr(datax,2,2) == toupper(input$text22)) {
      flag22 <- 1
    }
    else {flag22 <- 0}
    if (substr(datax,3,3) == toupper(input$text23)) {
      flag23 <- 1
    }
    else {flag23 <- 0}
    if (substr(datax,4,4) == toupper(input$text24)) {
      flag24 <- 1
    }
    else {flag24 <- 0}
    if (substr(datax,5,5) == toupper(input$text25)) {
      flag25 <- 1
    }
    else {flag25 <- 0}
    
    ncorrect2 <- sum(flag21,flag22,flag23,flag24,flag25)
    print(ncorrect2)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text21)) && (substr(datax,1,1) != toupper(input$text22)) 
        && (substr(datax,1,1) != toupper(input$text23)) && (substr(datax,1,1) != toupper(input$text24))
        && (substr(datax,1,1) != toupper(input$text25))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text21)) && (substr(datax,2,2) != toupper(input$text21)) 
        && (substr(datax,3,3) != toupper(input$text21)) && (substr(datax,4,4) != toupper(input$text21))
        && (substr(datax,5,5) != toupper(input$text21))) {
      flagx21 <- 1
    }
    else {flagx21 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text21)) && (substr(datax,2,2) != toupper(input$text22)) 
        && (substr(datax,2,2) != toupper(input$text23)) && (substr(datax,2,2) != toupper(input$text24))
        && (substr(datax,2,2) != toupper(input$text25))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text22)) && (substr(datax,2,2) != toupper(input$text22)) 
        && (substr(datax,3,3) != toupper(input$text22)) && (substr(datax,4,4) != toupper(input$text22))
        && (substr(datax,5,5) != toupper(input$text22))) {
      flagx22 <- 1
    }
    else {flagx22 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text21)) && (substr(datax,3,3) != toupper(input$text22)) 
        && (substr(datax,3,3) != toupper(input$text23)) && (substr(datax,3,3) != toupper(input$text24))
        && (substr(datax,3,3) != toupper(input$text25))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text23)) && (substr(datax,2,2) != toupper(input$text23)) 
        && (substr(datax,3,3) != toupper(input$text23)) && (substr(datax,4,4) != toupper(input$text23))
        && (substr(datax,5,5) != toupper(input$text23))) {
      flagx23 <- 1
    }
    else {flagx23 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text21)) && (substr(datax,4,4) != toupper(input$text22)) 
        && (substr(datax,4,4) != toupper(input$text23)) && (substr(datax,4,4) != toupper(input$text24))
        && (substr(datax,4,4) != toupper(input$text25))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text24)) && (substr(datax,2,2) != toupper(input$text24)) 
        && (substr(datax,3,3) != toupper(input$text24)) && (substr(datax,4,4) != toupper(input$text24))
        && (substr(datax,5,5) != toupper(input$text24))) {
      flagx24 <- 1
    }
    else {flagx24 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text21)) && (substr(datax,5,5) != toupper(input$text22)) 
        && (substr(datax,5,5) != toupper(input$text23)) && (substr(datax,5,5) != toupper(input$text24))
        && (substr(datax,5,5) != toupper(input$text25))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text25)) && (substr(datax,2,2) != toupper(input$text25)) 
        && (substr(datax,3,3) != toupper(input$text25)) && (substr(datax,4,4) != toupper(input$text25))
        && (substr(datax,5,5) != toupper(input$text25))) {
      flagx25 <- 1
    }
    else {flagx25 <- 0}
    
    ncorrect2x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx21,flagx22,flagx23,flagx24,flagx25))
    print(ncorrect2x)
    
    output$summary21 <- renderText({ncorrect2})
    output$summary22 <- renderText({ncorrect2x})
    
    #output messages 
    if (ncorrect2 == 5) {
      output$messagex <- renderText({"Your second guess is correct!"}) 
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
      #removeUI("#action3")
      #removeUI("#action4")
      #removeUI("#action5")
      #removeUI("#action6")
      #removeUI("#action7")
      #removeUI("#action8")
      #removeUI("#action9")
    }
    else {
      output$messagex <- renderText({"Your second guess is incorrect!"}) 
      output$action3x <- renderUI({
        actionButton("action3", label = "Submit")
      })
    } 
    
    removeUI("#action2")
  
  }
  )
  
  observeEvent(input$action3, {
    #looking for exact equality
    if (substr(datax,1,1) == toupper(input$text31)) {
      flag31 <- 1
    }
    else {flag31 <- 0}
    if (substr(datax,2,2) == toupper(input$text32)) {
      flag32 <- 1
    }
    else {flag32 <- 0}
    if (substr(datax,3,3) == toupper(input$text33)) {
      flag33 <- 1
    }
    else {flag33 <- 0}
    if (substr(datax,4,4) == toupper(input$text34)) {
      flag34 <- 1
    }
    else {flag34 <- 0}
    if (substr(datax,5,5) == toupper(input$text35)) {
      flag35 <- 1
    }
    else {flag35 <- 0}
    
    ncorrect3 <- sum(flag31,flag32,flag33,flag34,flag35)
    print(ncorrect3)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text31)) && (substr(datax,1,1) != toupper(input$text32)) 
        && (substr(datax,1,1) != toupper(input$text33)) && (substr(datax,1,1) != toupper(input$text34))
        && (substr(datax,1,1) != toupper(input$text35))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text31)) && (substr(datax,2,2) != toupper(input$text31)) 
        && (substr(datax,3,3) != toupper(input$text31)) && (substr(datax,4,4) != toupper(input$text31))
        && (substr(datax,5,5) != toupper(input$text31))) {
      flagx31 <- 1
    }
    else {flagx31 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text31)) && (substr(datax,2,2) != toupper(input$text32)) 
        && (substr(datax,2,2) != toupper(input$text33)) && (substr(datax,2,2) != toupper(input$text34))
        && (substr(datax,2,2) != toupper(input$text35))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text32)) && (substr(datax,2,2) != toupper(input$text32)) 
        && (substr(datax,3,3) != toupper(input$text32)) && (substr(datax,4,4) != toupper(input$text32))
        && (substr(datax,5,5) != toupper(input$text32))) {
      flagx32 <- 1
    }
    else {flagx32 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text31)) && (substr(datax,3,3) != toupper(input$text32)) 
        && (substr(datax,3,3) != toupper(input$text33)) && (substr(datax,3,3) != toupper(input$text34))
        && (substr(datax,3,3) != toupper(input$text35))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text33)) && (substr(datax,2,2) != toupper(input$text33)) 
        && (substr(datax,3,3) != toupper(input$text33)) && (substr(datax,4,4) != toupper(input$text33))
        && (substr(datax,5,5) != toupper(input$text33))) {
      flagx33 <- 1
    }
    else {flagx33 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text31)) && (substr(datax,4,4) != toupper(input$text32)) 
        && (substr(datax,4,4) != toupper(input$text33)) && (substr(datax,4,4) != toupper(input$text34))
        && (substr(datax,4,4) != toupper(input$text35))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text34)) && (substr(datax,2,2) != toupper(input$text34)) 
        && (substr(datax,3,3) != toupper(input$text34)) && (substr(datax,4,4) != toupper(input$text34))
        && (substr(datax,5,5) != toupper(input$text34))) {
      flagx34 <- 1
    }
    else {flagx34 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text31)) && (substr(datax,5,5) != toupper(input$text32)) 
        && (substr(datax,5,5) != toupper(input$text33)) && (substr(datax,5,5) != toupper(input$text34))
        && (substr(datax,5,5) != toupper(input$text35))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text35)) && (substr(datax,2,2) != toupper(input$text35)) 
        && (substr(datax,3,3) != toupper(input$text35)) && (substr(datax,4,4) != toupper(input$text35))
        && (substr(datax,5,5) != toupper(input$text35))) {
      flagx35 <- 1
    }
    else {flagx35 <- 0}
    
    ncorrect3x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx31,flagx32,flagx33,flagx34,flagx35))
    print(ncorrect3x)
    
    output$summary31 <- renderText({ncorrect3})
    output$summary32 <- renderText({ncorrect3x})
    
    #output messages 
    if (ncorrect3 == 5) {
      output$messagex <- renderText({"Your third guess is correct!"}) 
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
      #removeUI("#action4")
      #removeUI("#action5")
      #removeUI("#action6")
      #removeUI("#action7")
      #removeUI("#action8")
      #removeUI("#action9")
    }
    else {
      output$messagex <- renderText({"Your third guess is incorrect!"}) 
      output$action4x <- renderUI({
        actionButton("action4", label = "Submit")
      })
    } 
    
    removeUI("#action3")
  }
  )
  
  observeEvent(input$action4, {
    #looking for exact equality
    if (substr(datax,1,1) == toupper(input$text41)) {
      flag41 <- 1
    }
    else {flag41 <- 0}
    if (substr(datax,2,2) == toupper(input$text42)) {
      flag42 <- 1
    }
    else {flag42 <- 0}
    if (substr(datax,3,3) == toupper(input$text43)) {
      flag43 <- 1
    }
    else {flag43 <- 0}
    if (substr(datax,4,4) == toupper(input$text44)) {
      flag44 <- 1
    }
    else {flag44 <- 0}
    if (substr(datax,5,5) == toupper(input$text45)) {
      flag45 <- 1
    }
    else {flag45 <- 0}
    
    ncorrect4 <- sum(flag41,flag42,flag43,flag44,flag45)
    print(ncorrect4)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text41)) && (substr(datax,1,1) != toupper(input$text42)) 
        && (substr(datax,1,1) != toupper(input$text43)) && (substr(datax,1,1) != toupper(input$text44))
        && (substr(datax,1,1) != toupper(input$text45))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text41)) && (substr(datax,2,2) != toupper(input$text41)) 
        && (substr(datax,3,3) != toupper(input$text41)) && (substr(datax,4,4) != toupper(input$text41))
        && (substr(datax,5,5) != toupper(input$text41))) {
      flagx41 <- 1
    }
    else {flagx41 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text41)) && (substr(datax,2,2) != toupper(input$text42)) 
        && (substr(datax,2,2) != toupper(input$text43)) && (substr(datax,2,2) != toupper(input$text44))
        && (substr(datax,2,2) != toupper(input$text45))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text42)) && (substr(datax,2,2) != toupper(input$text42)) 
        && (substr(datax,3,3) != toupper(input$text42)) && (substr(datax,4,4) != toupper(input$text42))
        && (substr(datax,5,5) != toupper(input$text42))) {
      flagx42 <- 1
    }
    else {flagx42 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text41)) && (substr(datax,3,3) != toupper(input$text42)) 
        && (substr(datax,3,3) != toupper(input$text43)) && (substr(datax,3,3) != toupper(input$text44))
        && (substr(datax,3,3) != toupper(input$text45))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text43)) && (substr(datax,2,2) != toupper(input$text43)) 
        && (substr(datax,3,3) != toupper(input$text43)) && (substr(datax,4,4) != toupper(input$text43))
        && (substr(datax,5,5) != toupper(input$text43))) {
      flagx43 <- 1
    }
    else {flagx43 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text41)) && (substr(datax,4,4) != toupper(input$text42)) 
        && (substr(datax,4,4) != toupper(input$text43)) && (substr(datax,4,4) != toupper(input$text44))
        && (substr(datax,4,4) != toupper(input$text45))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text44)) && (substr(datax,2,2) != toupper(input$text44)) 
        && (substr(datax,3,3) != toupper(input$text44)) && (substr(datax,4,4) != toupper(input$text44))
        && (substr(datax,5,5) != toupper(input$text44))) {
      flagx44 <- 1
    }
    else {flagx44 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text41)) && (substr(datax,5,5) != toupper(input$text42)) 
        && (substr(datax,5,5) != toupper(input$text43)) && (substr(datax,5,5) != toupper(input$text44))
        && (substr(datax,5,5) != toupper(input$text45))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text45)) && (substr(datax,2,2) != toupper(input$text45)) 
        && (substr(datax,3,3) != toupper(input$text45)) && (substr(datax,4,4) != toupper(input$text45))
        && (substr(datax,5,5) != toupper(input$text45))) {
      flagx45 <- 1
    }
    else {flagx45 <- 0}
    
    ncorrect4x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx41,flagx42,flagx43,flagx44,flagx45))
    print(ncorrect4x)
    
    output$summary41 <- renderText({ncorrect4})
    output$summary42 <- renderText({ncorrect4x})
    
    #output messages 
    if (ncorrect4 == 5) {
      output$messagex <- renderText({"Your fourth guess is correct!"}) 
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
      #removeUI("#action5")
      #removeUI("#action6")
      #removeUI("#action7")
      #removeUI("#action8")
      #removeUI("#action9")
    }
    else {
      output$messagex <- renderText({"Your fourth guess is incorrect!"}) 
      output$action5x <- renderUI({
        actionButton("action5", label = "Submit")
      })
    } 
    
    removeUI("#action4")
  }
  )
  
  observeEvent(input$action5, {
    #looking for exact equality
    if (substr(datax,1,1) == toupper(input$text51)) {
      flag51 <- 1
    }
    else {flag51 <- 0}
    if (substr(datax,2,2) == toupper(input$text52)) {
      flag52 <- 1
    }
    else {flag52 <- 0}
    if (substr(datax,3,3) == toupper(input$text53)) {
      flag53 <- 1
    }
    else {flag53 <- 0}
    if (substr(datax,4,4) == toupper(input$text54)) {
      flag54 <- 1
    }
    else {flag54 <- 0}
    if (substr(datax,5,5) == toupper(input$text55)) {
      flag55 <- 1
    }
    else {flag55 <- 0}
    
    ncorrect5 <- sum(flag51,flag52,flag53,flag54,flag55)
    print(ncorrect5)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text51)) && (substr(datax,1,1) != toupper(input$text52)) 
        && (substr(datax,1,1) != toupper(input$text53)) && (substr(datax,1,1) != toupper(input$text54))
        && (substr(datax,1,1) != toupper(input$text55))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text51)) && (substr(datax,2,2) != toupper(input$text51)) 
        && (substr(datax,3,3) != toupper(input$text51)) && (substr(datax,4,4) != toupper(input$text51))
        && (substr(datax,5,5) != toupper(input$text51))) {
      flagx51 <- 1
    }
    else {flagx51 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text51)) && (substr(datax,2,2) != toupper(input$text52)) 
        && (substr(datax,2,2) != toupper(input$text53)) && (substr(datax,2,2) != toupper(input$text54))
        && (substr(datax,2,2) != toupper(input$text55))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text52)) && (substr(datax,2,2) != toupper(input$text52)) 
        && (substr(datax,3,3) != toupper(input$text52)) && (substr(datax,4,4) != toupper(input$text52))
        && (substr(datax,5,5) != toupper(input$text52))) {
      flagx52 <- 1
    }
    else {flagx52 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text51)) && (substr(datax,3,3) != toupper(input$text52)) 
        && (substr(datax,3,3) != toupper(input$text53)) && (substr(datax,3,3) != toupper(input$text54))
        && (substr(datax,3,3) != toupper(input$text55))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text53)) && (substr(datax,2,2) != toupper(input$text53)) 
        && (substr(datax,3,3) != toupper(input$text53)) && (substr(datax,4,4) != toupper(input$text53))
        && (substr(datax,5,5) != toupper(input$text53))) {
      flagx53 <- 1
    }
    else {flagx53 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text51)) && (substr(datax,4,4) != toupper(input$text52)) 
        && (substr(datax,4,4) != toupper(input$text53)) && (substr(datax,4,4) != toupper(input$text54))
        && (substr(datax,4,4) != toupper(input$text55))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text54)) && (substr(datax,2,2) != toupper(input$text54)) 
        && (substr(datax,3,3) != toupper(input$text54)) && (substr(datax,4,4) != toupper(input$text54))
        && (substr(datax,5,5) != toupper(input$text54))) {
      flagx54 <- 1
    }
    else {flagx54 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text51)) && (substr(datax,5,5) != toupper(input$text52)) 
        && (substr(datax,5,5) != toupper(input$text53)) && (substr(datax,5,5) != toupper(input$text54))
        && (substr(datax,5,5) != toupper(input$text55))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text55)) && (substr(datax,2,2) != toupper(input$text55)) 
        && (substr(datax,3,3) != toupper(input$text55)) && (substr(datax,4,4) != toupper(input$text55))
        && (substr(datax,5,5) != toupper(input$text55))) {
      flagx55 <- 1
    }
    else {flagx55 <- 0}
    
    ncorrect5x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx51,flagx52,flagx53,flagx54,flagx55))
    print(ncorrect5x)
    
    output$summary51 <- renderText({ncorrect5})
    output$summary52 <- renderText({ncorrect5x})
    
    #output messages 
    if (ncorrect5 == 5) {
      output$messagex <- renderText({"Your fifth guess is correct!"}) 
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
      #removeUI("#action6")
      #removeUI("#action7")
      #removeUI("#action8")
      #removeUI("#action9")
    }
    else {
      output$messagex <- renderText({"Your fifth guess is incorrect!"}) 
      output$action6x <- renderUI({
        actionButton("action6", label = "Submit")
      })
    } 
    
    removeUI("#action5")
  }
  )
  
  observeEvent(input$action6, {
    #looking for exact equality
    if (substr(datax,1,1) == toupper(input$text61)) {
      flag61 <- 1
    }
    else {flag61 <- 0}
    if (substr(datax,2,2) == toupper(input$text62)) {
      flag62 <- 1
    }
    else {flag62 <- 0}
    if (substr(datax,3,3) == toupper(input$text63)) {
      flag63 <- 1
    }
    else {flag63 <- 0}
    if (substr(datax,4,4) == toupper(input$text64)) {
      flag64 <- 1
    }
    else {flag64 <- 0}
    if (substr(datax,5,5) == toupper(input$text65)) {
      flag65 <- 1
    }
    else {flag65 <- 0}
    
    ncorrect6 <- sum(flag61,flag62,flag63,flag64,flag65)
    print(ncorrect6)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text61)) && (substr(datax,1,1) != toupper(input$text62)) 
        && (substr(datax,1,1) != toupper(input$text63)) && (substr(datax,1,1) != toupper(input$text64))
        && (substr(datax,1,1) != toupper(input$text65))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text61)) && (substr(datax,2,2) != toupper(input$text61)) 
        && (substr(datax,3,3) != toupper(input$text61)) && (substr(datax,4,4) != toupper(input$text61))
        && (substr(datax,5,5) != toupper(input$text61))) {
      flagx61 <- 1
    }
    else {flagx61 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text61)) && (substr(datax,2,2) != toupper(input$text62)) 
        && (substr(datax,2,2) != toupper(input$text63)) && (substr(datax,2,2) != toupper(input$text64))
        && (substr(datax,2,2) != toupper(input$text65))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text62)) && (substr(datax,2,2) != toupper(input$text62)) 
        && (substr(datax,3,3) != toupper(input$text62)) && (substr(datax,4,4) != toupper(input$text62))
        && (substr(datax,5,5) != toupper(input$text62))) {
      flagx62 <- 1
    }
    else {flagx62 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text61)) && (substr(datax,3,3) != toupper(input$text62)) 
        && (substr(datax,3,3) != toupper(input$text63)) && (substr(datax,3,3) != toupper(input$text64))
        && (substr(datax,3,3) != toupper(input$text65))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text63)) && (substr(datax,2,2) != toupper(input$text63)) 
        && (substr(datax,3,3) != toupper(input$text63)) && (substr(datax,4,4) != toupper(input$text63))
        && (substr(datax,5,5) != toupper(input$text63))) {
      flagx63 <- 1
    }
    else {flagx63 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text61)) && (substr(datax,4,4) != toupper(input$text62)) 
        && (substr(datax,4,4) != toupper(input$text63)) && (substr(datax,4,4) != toupper(input$text64))
        && (substr(datax,4,4) != toupper(input$text65))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text64)) && (substr(datax,2,2) != toupper(input$text64)) 
        && (substr(datax,3,3) != toupper(input$text64)) && (substr(datax,4,4) != toupper(input$text64))
        && (substr(datax,5,5) != toupper(input$text64))) {
      flagx64 <- 1
    }
    else {flagx64 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text61)) && (substr(datax,5,5) != toupper(input$text62)) 
        && (substr(datax,5,5) != toupper(input$text63)) && (substr(datax,5,5) != toupper(input$text64))
        && (substr(datax,5,5) != toupper(input$text65))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text65)) && (substr(datax,2,2) != toupper(input$text65)) 
        && (substr(datax,3,3) != toupper(input$text65)) && (substr(datax,4,4) != toupper(input$text65))
        && (substr(datax,5,5) != toupper(input$text65))) {
      flagx65 <- 1
    }
    else {flagx65 <- 0}
    
    ncorrect6x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx61,flagx62,flagx63,flagx64,flagx65))
    print(ncorrect6x)
    
    output$summary61 <- renderText({ncorrect6})
    output$summary62 <- renderText({ncorrect6x})
    
    #output messages 
    if (ncorrect6 == 5) {
      output$messagex <- renderText({"Your sixth guess is correct!"}) 
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
      #removeUI("#action7")
      #removeUI("#action8")
      #removeUI("#action9")
    }
    else {
      output$messagex <- renderText({"Your sixth guess is incorrect!"}) 
      output$action7x <- renderUI({
        actionButton("action7", label = "Submit")
      })
    } 
    
    removeUI("#action6")
  }
  )
  
  observeEvent(input$action7, {
    #looking for exact equality
    if (substr(datax,1,1) == toupper(input$text71)) {
      flag71 <- 1
    }
    else {flag71 <- 0}
    if (substr(datax,2,2) == toupper(input$text72)) {
      flag72 <- 1
    }
    else {flag72 <- 0}
    if (substr(datax,3,3) == toupper(input$text73)) {
      flag73 <- 1
    }
    else {flag73 <- 0}
    if (substr(datax,4,4) == toupper(input$text74)) {
      flag74 <- 1
    }
    else {flag74 <- 0}
    if (substr(datax,5,5) == toupper(input$text75)) {
      flag75 <- 1
    }
    else {flag75 <- 0}
    
    ncorrect7 <- sum(flag71,flag72,flag73,flag74,flag75)
    print(ncorrect7)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text71)) && (substr(datax,1,1) != toupper(input$text72)) 
        && (substr(datax,1,1) != toupper(input$text73)) && (substr(datax,1,1) != toupper(input$text74))
        && (substr(datax,1,1) != toupper(input$text75))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text71)) && (substr(datax,2,2) != toupper(input$text71)) 
        && (substr(datax,3,3) != toupper(input$text71)) && (substr(datax,4,4) != toupper(input$text71))
        && (substr(datax,5,5) != toupper(input$text71))) {
      flagx71 <- 1
    }
    else {flagx71 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text71)) && (substr(datax,2,2) != toupper(input$text72)) 
        && (substr(datax,2,2) != toupper(input$text73)) && (substr(datax,2,2) != toupper(input$text74))
        && (substr(datax,2,2) != toupper(input$text75))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text72)) && (substr(datax,2,2) != toupper(input$text72)) 
        && (substr(datax,3,3) != toupper(input$text72)) && (substr(datax,4,4) != toupper(input$text72))
        && (substr(datax,5,5) != toupper(input$text72))) {
      flagx72 <- 1
    }
    else {flagx72 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text71)) && (substr(datax,3,3) != toupper(input$text72)) 
        && (substr(datax,3,3) != toupper(input$text73)) && (substr(datax,3,3) != toupper(input$text74))
        && (substr(datax,3,3) != toupper(input$text75))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text73)) && (substr(datax,2,2) != toupper(input$text73)) 
        && (substr(datax,3,3) != toupper(input$text73)) && (substr(datax,4,4) != toupper(input$text73))
        && (substr(datax,5,5) != toupper(input$text73))) {
      flagx73 <- 1
    }
    else {flagx73 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text71)) && (substr(datax,4,4) != toupper(input$text72)) 
        && (substr(datax,4,4) != toupper(input$text73)) && (substr(datax,4,4) != toupper(input$text74))
        && (substr(datax,4,4) != toupper(input$text75))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text74)) && (substr(datax,2,2) != toupper(input$text74)) 
        && (substr(datax,3,3) != toupper(input$text74)) && (substr(datax,4,4) != toupper(input$text74))
        && (substr(datax,5,5) != toupper(input$text74))) {
      flagx74 <- 1
    }
    else {flagx74 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text71)) && (substr(datax,5,5) != toupper(input$text72)) 
        && (substr(datax,5,5) != toupper(input$text73)) && (substr(datax,5,5) != toupper(input$text74))
        && (substr(datax,5,5) != toupper(input$text75))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text75)) && (substr(datax,2,2) != toupper(input$text75)) 
        && (substr(datax,3,3) != toupper(input$text75)) && (substr(datax,4,4) != toupper(input$text75))
        && (substr(datax,5,5) != toupper(input$text75))) {
      flagx75 <- 1
    }
    else {flagx75 <- 0}
    
    ncorrect7x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx71,flagx72,flagx73,flagx74,flagx75))
    print(ncorrect7x)
    
    output$summary71 <- renderText({ncorrect7})
    output$summary72 <- renderText({ncorrect7x})
    
    #output messages 
    if (ncorrect7 == 5) {
      output$messagex <- renderText({"Your seventh guess is correct!"}) 
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
      #removeUI("#action8")
      #removeUI("#action9")
    }
    else {
      output$messagex <- renderText({"Your seventh guess is incorrect!"}) 
      output$action8x <- renderUI({
        actionButton("action8", label = "Submit")
      })
    } 
    
    removeUI("#action7")
  }
  )
  
  observeEvent(input$action8, {
    #looking for exact equality
    if (substr(datax,1,1) == toupper(input$text81)) {
      flag81 <- 1
    }
    else {flag81 <- 0}
    if (substr(datax,2,2) == toupper(input$text82)) {
      flag82 <- 1
    }
    else {flag82 <- 0}
    if (substr(datax,3,3) == toupper(input$text83)) {
      flag83 <- 1
    }
    else {flag83 <- 0}
    if (substr(datax,4,4) == toupper(input$text84)) {
      flag84 <- 1
    }
    else {flag84 <- 0}
    if (substr(datax,5,5) == toupper(input$text85)) {
      flag85 <- 1
    }
    else {flag85 <- 0}
    
    ncorrect8 <- sum(flag81,flag82,flag83,flag84,flag85)
    print(ncorrect8)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text81)) && (substr(datax,1,1) != toupper(input$text82)) 
        && (substr(datax,1,1) != toupper(input$text83)) && (substr(datax,1,1) != toupper(input$text84))
        && (substr(datax,1,1) != toupper(input$text85))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text81)) && (substr(datax,2,2) != toupper(input$text81)) 
        && (substr(datax,3,3) != toupper(input$text81)) && (substr(datax,4,4) != toupper(input$text81))
        && (substr(datax,5,5) != toupper(input$text81))) {
      flagx81 <- 1
    }
    else {flagx81 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text81)) && (substr(datax,2,2) != toupper(input$text82)) 
        && (substr(datax,2,2) != toupper(input$text83)) && (substr(datax,2,2) != toupper(input$text84))
        && (substr(datax,2,2) != toupper(input$text85))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text82)) && (substr(datax,2,2) != toupper(input$text82)) 
        && (substr(datax,3,3) != toupper(input$text82)) && (substr(datax,4,4) != toupper(input$text82))
        && (substr(datax,5,5) != toupper(input$text82))) {
      flagx82 <- 1
    }
    else {flagx82 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text81)) && (substr(datax,3,3) != toupper(input$text82)) 
        && (substr(datax,3,3) != toupper(input$text83)) && (substr(datax,3,3) != toupper(input$text84))
        && (substr(datax,3,3) != toupper(input$text85))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text83)) && (substr(datax,2,2) != toupper(input$text83)) 
        && (substr(datax,3,3) != toupper(input$text83)) && (substr(datax,4,4) != toupper(input$text83))
        && (substr(datax,5,5) != toupper(input$text83))) {
      flagx83 <- 1
    }
    else {flagx83 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text81)) && (substr(datax,4,4) != toupper(input$text82)) 
        && (substr(datax,4,4) != toupper(input$text83)) && (substr(datax,4,4) != toupper(input$text84))
        && (substr(datax,4,4) != toupper(input$text85))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text84)) && (substr(datax,2,2) != toupper(input$text84)) 
        && (substr(datax,3,3) != toupper(input$text84)) && (substr(datax,4,4) != toupper(input$text84))
        && (substr(datax,5,5) != toupper(input$text84))) {
      flagx84 <- 1
    }
    else {flagx84 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text81)) && (substr(datax,5,5) != toupper(input$text82)) 
        && (substr(datax,5,5) != toupper(input$text83)) && (substr(datax,5,5) != toupper(input$text84))
        && (substr(datax,5,5) != toupper(input$text85))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text85)) && (substr(datax,2,2) != toupper(input$text85)) 
        && (substr(datax,3,3) != toupper(input$text85)) && (substr(datax,4,4) != toupper(input$text85))
        && (substr(datax,5,5) != toupper(input$text85))) {
      flagx85 <- 1
    }
    else {flagx85 <- 0}
    
    ncorrect8x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx81,flagx82,flagx83,flagx84,flagx85))
    print(ncorrect8x)
    
    output$summary81 <- renderText({ncorrect8})
    output$summary82 <- renderText({ncorrect8x})
    
    #output messages 
    if (ncorrect8 == 5) {
      output$messagex <- renderText({"Your eighth guess is correct!"}) 
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
      #removeUI("#action9")
    }
    else {
      output$messagex <- renderText({"Your eighth guess is incorrect!"}) 
      output$action9x <- renderUI({
        actionButton("action9", label = "Submit")
      })
    } 
    
    removeUI("#action8")
  }
  )
  
  observeEvent(input$action9, {
    #looking for exact equality
    if (substr(datax,1,1) == toupper(input$text91)) {
      flag91 <- 1
    }
    else {flag91 <- 0}
    if (substr(datax,2,2) == toupper(input$text92)) {
      flag92 <- 1
    }
    else {flag92 <- 0}
    if (substr(datax,3,3) == toupper(input$text93)) {
      flag93 <- 1
    }
    else {flag93 <- 0}
    if (substr(datax,4,4) == toupper(input$text94)) {
      flag94 <- 1
    }
    else {flag94 <- 0}
    if (substr(datax,5,5) == toupper(input$text95)) {
      flag95 <- 1
    }
    else {flag95 <- 0}
    
    ncorrect9 <- sum(flag91,flag92,flag93,flag94,flag95)
    print(ncorrect9)
    
    #looking for how many correct letters (number - incorrect)
    if ((substr(datax,1,1) != toupper(input$text91)) && (substr(datax,1,1) != toupper(input$text92)) 
        && (substr(datax,1,1) != toupper(input$text93)) && (substr(datax,1,1) != toupper(input$text94))
        && (substr(datax,1,1) != toupper(input$text95))) {
      flagx1 <- 1
    }
    else {flagx1 <- 0}
    if ((substr(datax,1,1) != toupper(input$text91)) && (substr(datax,2,2) != toupper(input$text91)) 
        && (substr(datax,3,3) != toupper(input$text91)) && (substr(datax,4,4) != toupper(input$text91))
        && (substr(datax,5,5) != toupper(input$text91))) {
      flagx91 <- 1
    }
    else {flagx91 <- 0}
    
    if ((substr(datax,2,2) != toupper(input$text91)) && (substr(datax,2,2) != toupper(input$text92)) 
        && (substr(datax,2,2) != toupper(input$text93)) && (substr(datax,2,2) != toupper(input$text94))
        && (substr(datax,2,2) != toupper(input$text95))) {
      flagx2 <- 1
    }
    else {flagx2 <- 0}
    if ((substr(datax,1,1) != toupper(input$text92)) && (substr(datax,2,2) != toupper(input$text92)) 
        && (substr(datax,3,3) != toupper(input$text92)) && (substr(datax,4,4) != toupper(input$text92))
        && (substr(datax,5,5) != toupper(input$text92))) {
      flagx92 <- 1
    }
    else {flagx92 <- 0}
    
    if ((substr(datax,3,3) != toupper(input$text91)) && (substr(datax,3,3) != toupper(input$text92)) 
        && (substr(datax,3,3) != toupper(input$text93)) && (substr(datax,3,3) != toupper(input$text94))
        && (substr(datax,3,3) != toupper(input$text95))) {
      flagx3 <- 1
    }
    else {flagx3 <- 0}
    if ((substr(datax,1,1) != toupper(input$text93)) && (substr(datax,2,2) != toupper(input$text93)) 
        && (substr(datax,3,3) != toupper(input$text93)) && (substr(datax,4,4) != toupper(input$text93))
        && (substr(datax,5,5) != toupper(input$text93))) {
      flagx93 <- 1
    }
    else {flagx93 <- 0}
    
    if ((substr(datax,4,4) != toupper(input$text91)) && (substr(datax,4,4) != toupper(input$text92)) 
        && (substr(datax,4,4) != toupper(input$text93)) && (substr(datax,4,4) != toupper(input$text94))
        && (substr(datax,4,4) != toupper(input$text95))) {
      flagx4 <- 1
    }
    else {flagx4 <- 0}
    if ((substr(datax,1,1) != toupper(input$text94)) && (substr(datax,2,2) != toupper(input$text94)) 
        && (substr(datax,3,3) != toupper(input$text94)) && (substr(datax,4,4) != toupper(input$text94))
        && (substr(datax,5,5) != toupper(input$text94))) {
      flagx94 <- 1
    }
    else {flagx94 <- 0}
    
    if ((substr(datax,5,5) != toupper(input$text91)) && (substr(datax,5,5) != toupper(input$text92)) 
        && (substr(datax,5,5) != toupper(input$text93)) && (substr(datax,5,5) != toupper(input$text94))
        && (substr(datax,5,5) != toupper(input$text95))) {
      flagx5 <- 1
    }
    else {flagx5 <- 0}
    if ((substr(datax,1,1) != toupper(input$text95)) && (substr(datax,2,2) != toupper(input$text95)) 
        && (substr(datax,3,3) != toupper(input$text95)) && (substr(datax,4,4) != toupper(input$text95))
        && (substr(datax,5,5) != toupper(input$text95))) {
      flagx95 <- 1
    }
    else {flagx95 <- 0}
    
    ncorrect9x <- 5 - max(sum(flagx1,flagx2,flagx3,flagx4,flagx5),sum(flagx91,flagx92,flagx93,flagx94,flagx95))
    print(ncorrect9x)
    
    output$summary91 <- renderText({ncorrect9})
    output$summary92 <- renderText({ncorrect9x})
    
    #output messages 
    if (ncorrect9 == 5) {
      output$messagex <- renderText({"Your final guess is correct!"})
      output$message <- renderText({"Congratulations - You have solved the puzzle!"})
    }
    else {
      output$messagex <- renderText({"Sorry, you have not solved the puzzle today!"}) 
      output$message <- renderText({paste0("The word was... ", word())})
    } 
    #removeUI("#action1")
    #removeUI("#action2")
    #removeUI("#action3")
    #removeUI("#action4")
    #removeUI("#action5")
    #removeUI("#action6")
    #removeUI("#action7")
    #removeUI("#action8")
    removeUI("#action9")
  }
  )
  
  observeEvent(input$NewGame, {
    
    removeUI("#action2")
    removeUI("#action3")
    removeUI("#action4")
    removeUI("#action5")
    removeUI("#action6")
    removeUI("#action7")
    removeUI("#action8")
    removeUI("#action9")
    
    print("starting new game")

    #Take a random word 
    samp <- sample(nrow(words5),1)
    datax <<- words5[samp,2]
    
    datay <<- reactiveVal(datax)
    
    word <<- reactive({
      wordx <- datay()
      message(glue("The word is {datay()}"))
      wordx
    })
    
    # samp <- sample(nrow(words5),1)
    # datax <- words5[samp,2]
    # print(datax)
    # 
    # datay <- datax
    
    check <- word()
    #print(check)
    
    #output$choice <- renderPrint({datax})
    updateTextInput(inputId = "text11", value = "")
    updateTextInput(inputId = "text12", value = "")
    updateTextInput(inputId = "text13", value = "")
    updateTextInput(inputId = "text14", value = "")
    updateTextInput(inputId = "text15", value = "")
    updateTextInput(inputId = "text21", value = "")
    updateTextInput(inputId = "text22", value = "")
    updateTextInput(inputId = "text23", value = "")
    updateTextInput(inputId = "text24", value = "")
    updateTextInput(inputId = "text25", value = "")
    updateTextInput(inputId = "text31", value = "")
    updateTextInput(inputId = "text32", value = "")
    updateTextInput(inputId = "text33", value = "")
    updateTextInput(inputId = "text34", value = "")
    updateTextInput(inputId = "text35", value = "")
    updateTextInput(inputId = "text41", value = "")
    updateTextInput(inputId = "text42", value = "")
    updateTextInput(inputId = "text43", value = "")
    updateTextInput(inputId = "text44", value = "")
    updateTextInput(inputId = "text45", value = "")
    updateTextInput(inputId = "text51", value = "")
    updateTextInput(inputId = "text52", value = "")
    updateTextInput(inputId = "text53", value = "")
    updateTextInput(inputId = "text54", value = "")
    updateTextInput(inputId = "text55", value = "")
    updateTextInput(inputId = "text61", value = "")
    updateTextInput(inputId = "text62", value = "")
    updateTextInput(inputId = "text63", value = "")
    updateTextInput(inputId = "text64", value = "")
    updateTextInput(inputId = "text65", value = "")
    updateTextInput(inputId = "text71", value = "")
    updateTextInput(inputId = "text72", value = "")
    updateTextInput(inputId = "text73", value = "")
    updateTextInput(inputId = "text74", value = "")
    updateTextInput(inputId = "text75", value = "")
    updateTextInput(inputId = "text81", value = "")
    updateTextInput(inputId = "text82", value = "")
    updateTextInput(inputId = "text83", value = "")
    updateTextInput(inputId = "text84", value = "")
    updateTextInput(inputId = "text85", value = "")
    updateTextInput(inputId = "text91", value = "")
    updateTextInput(inputId = "text92", value = "")
    updateTextInput(inputId = "text93", value = "")
    updateTextInput(inputId = "text94", value = "")
    updateTextInput(inputId = "text95", value = "")
    output$action1x <- renderUI({
      actionButton("action1", label = "Submit")
    })
    output$text11x <- renderUI({
      textInput("text11", label = NULL, value = "")
    })
    output$text12x <- renderUI({
      textInput("text12", label = NULL, value = "")
    })
    output$text13x <- renderUI({
      textInput("text13", label = NULL, value = "")
    })
    output$text14x <- renderUI({
      textInput("text14", label = NULL, value = "")
    })
    output$text15x <- renderUI({
      textInput("text15", label = NULL, value = "")
    })
    output$text21x <- renderUI({
      textInput("text21", label = NULL, value = "")
    })
    output$text22x <- renderUI({
      textInput("text22", label = NULL, value = "")
    })
    output$text23x <- renderUI({
      textInput("text23", label = NULL, value = "")
    })
    output$text24x <- renderUI({
      textInput("text24", label = NULL, value = "")
    })
    output$text25x <- renderUI({
      textInput("text25", label = NULL, value = "")
    })
    output$text31x <- renderUI({
      textInput("text31", label = NULL, value = "")
    })
    output$text32x <- renderUI({
      textInput("text32", label = NULL, value = "")
    })
    output$text33x <- renderUI({
      textInput("text33", label = NULL, value = "")
    })
    output$text34x <- renderUI({
      textInput("text34", label = NULL, value = "")
    })
    output$text35x <- renderUI({
      textInput("text35", label = NULL, value = "")
    })
    output$text41x <- renderUI({
      textInput("text41", label = NULL, value = "")
    })
    output$text42x <- renderUI({
      textInput("text42", label = NULL, value = "")
    })
    output$text43x <- renderUI({
      textInput("text43", label = NULL, value = "")
    })
    output$text44x <- renderUI({
      textInput("text44", label = NULL, value = "")
    })
    output$text45x <- renderUI({
      textInput("text45", label = NULL, value = "")
    })
    output$text51x <- renderUI({
      textInput("text51", label = NULL, value = "")
    })
    output$text52x <- renderUI({
      textInput("text52", label = NULL, value = "")
    })
    output$text53x <- renderUI({
      textInput("text53", label = NULL, value = "")
    })
    output$text54x <- renderUI({
      textInput("text54", label = NULL, value = "")
    })
    output$text55x <- renderUI({
      textInput("text55", label = NULL, value = "")
    })
    output$text61x <- renderUI({
      textInput("text61", label = NULL, value = "")
    })
    output$text62x <- renderUI({
      textInput("text62", label = NULL, value = "")
    })
    output$text63x <- renderUI({
      textInput("text63", label = NULL, value = "")
    })
    output$text64x <- renderUI({
      textInput("text64", label = NULL, value = "")
    })
    output$text65x <- renderUI({
      textInput("text65", label = NULL, value = "")
    })
    output$text71x <- renderUI({
      textInput("text71", label = NULL, value = "")
    })
    output$text72x <- renderUI({
      textInput("text72", label = NULL, value = "")
    })
    output$text73x <- renderUI({
      textInput("text73", label = NULL, value = "")
    })
    output$text74x <- renderUI({
      textInput("text74", label = NULL, value = "")
    })
    output$text75x <- renderUI({
      textInput("text75", label = NULL, value = "")
    })
    output$text81x <- renderUI({
      textInput("text81", label = NULL, value = "")
    })
    output$text82x <- renderUI({
      textInput("text82", label = NULL, value = "")
    })
    output$text83x <- renderUI({
      textInput("text83", label = NULL, value = "")
    })
    output$text84x <- renderUI({
      textInput("text84", label = NULL, value = "")
    })
    output$text85x <- renderUI({
      textInput("text85", label = NULL, value = "")
    })
    output$text91x <- renderUI({
      textInput("text91", label = NULL, value = "")
    })
    output$text92x <- renderUI({
      textInput("text92", label = NULL, value = "")
    })
    output$text93x <- renderUI({
      textInput("text93", label = NULL, value = "")
    })
    output$text94x <- renderUI({
      textInput("text94", label = NULL, value = "")
    })
    output$text95x <- renderUI({
      textInput("text95", label = NULL, value = "")
    })
    
    output$message <- renderText({" "}) 
    output$messagex <- renderText({" "}) 
    output$summary11 <- renderText({" "})
    output$summary12 <- renderText({" "})
    output$summary21 <- renderText({" "})
    output$summary22 <- renderText({" "})
    output$summary31 <- renderText({" "})
    output$summary32 <- renderText({" "})
    output$summary41 <- renderText({" "})
    output$summary42 <- renderText({" "})
    output$summary51 <- renderText({" "})
    output$summary52 <- renderText({" "})
    output$summary61 <- renderText({" "})
    output$summary62 <- renderText({" "})
    output$summary71 <- renderText({" "})
    output$summary72 <- renderText({" "})
    output$summary81 <- renderText({" "})
    output$summary82 <- renderText({" "})
    output$summary91 <- renderText({" "})
    output$summary92 <- renderText({" "})
    
  })

}
