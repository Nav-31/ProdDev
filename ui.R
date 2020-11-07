library(shiny)   # hrwfbdnc xgr4hwebjd nxgyhrbjedc xigbjhwefd scxigyhdfsc
# fhwebdnc xzh3rbjena cxujkrbe aczxbjke fdzxbjkne fadzjxbknm ef djzbkxnm efadjkzxm 
shinyUI(                                    # hbejwfdns chjbenw fcxjnwerfdsjcnb refdhjn adjzxnasx
    navbarPage("Automobile Technicalities", # gyesdh jxgyehdbjsax zgyubhwdsaxygu bhedsxgybhjef wdgyusxbhjn
               tabPanel("Results",
                        fluidPage(
                            titlePanel("Exploring different factors"), # gyuebhjds hebjwsdxgyhbjsd gyhebjsd
                            sidebarLayout(
                                sidebarPanel(                         # hutrjdnamxs  tgwfdbcjx nzgyr befacbj refac
                                    selectInput("variable", "x:",
                                                c("Acc" = "acceleration", # gyehsdjn gyhefwds yugewdbs
                                                  "Dp" = "displacement"
                                                  
                                                ))),  # ggehwd sxgyebds xgyhebjsd nxzgyuehwd bsxgyuebhdsjx
                                mainPanel(
                                    h3(textOutput("caption")),  # rgfh bdsxghbqwnama676uyjnhbgfvcdwskujnbgfvcdxsz
                                    
                                    tabsetPanel(type = "tabs", # 3herbjsdnx jh23bne dhjn3rqadc
                                                tabPanel("Graph", plotOutput("qp")) # gyfehbsdn xgyuefhdbsjxugehbwsd axguyedbhsx
                                    )))))))  # ghefjsd nxhbeqjndsx aihjmqwertyukynhbgvcxr tytgfbvdw5yj gbvcs
                                