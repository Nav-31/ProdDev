library(shiny)  #  gyrehjdns 3uhejnd ui3ryu jasdxgyhajsnd hw DYUT3 EDSB

q <- read.csv('auto-mpg.csv')  #YGEHJ DQDGWEHJAS YGHBDJKEFKABGDCBN

shinyServer(function(input,output)  # ygehbdnsxiey dhwe gwyd wasdnieg dsndnjah ileuyudsnded bsjdajk
{
    formulaText <- reactive({
        paste("mpg ~ ",input$variable) # veghbsd dh ge dywe bdh3ge qwhe whd beibf dauhuqiye qwdbj wte bd ue fv e
    })
    
    formulaTextPoint <- reactive({
        paste("mpg ~", "as.integer(",input$variable,")")
    })   # yehjw snyehwjns gyhej wnsgy jwnsy hejnkwdsgyh jnewsyeqwjnk yesh jnzn
    
    
    output$cap <- renderText({
        formulaText()    # tyh s yuegwhs gy sbgyewhs azgh bwsazghbs wrg bdb  ew dbg swhfesuqhjba zqgwhs bax uqwhjsbnb
    })
    
    output$qp <-renderPlot({
        plot(as.formula(formulaText()),data = q, outline = input$outliers) # gehwdbsaxbuhjbndmsxgweil dqhjehg sbdugd sbdhsgds
    }) # bhejdns auh34rwenksd ciwgjebdns xoiqj3bwes xfbbq   sasdfghjk 3gredsb uqw dxtwhbanz
    
    
})  #YEHJDNS WYEHDSBJ XYGHWSJAKD NQYUWHK SNDXWHANS IKEDBXJ N