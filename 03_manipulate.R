library(ggplot2)
library(manipulate)

g1_proc  <-  function (lambda,red_flag) {
  
  ggplot(data.frame(x=c(0,1.4)),aes(x)) + 
    stat_function(fun=dexp,args = list(rate=lambda),
                  geom="line",color=ifelse(red_flag,"red","green")) 
}

manipulate(g1_proc(lambda,red_flag),lambda=slider(1,100),
           red_flag=checkbox(initial = T,label="red color?"))


grafic_proc  <-  
  function (df) {
    ggplot(x=c(-6,6))+
      stat_function(col="red",fun=dnorm)+
      stat_function(col="red",fun=dt,args=list(df=df))
      
  }
df  <-  10
ggplot(x=c(-6,6))+
  stat_function(col="red",fun=dnorm)+
  stat_function(col="red",fun=dt,args=list(df=df))