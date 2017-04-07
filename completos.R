setwd("~/GitHub/Programacion-Actuarial-III/specdata")

completos <- function(directorio, id = 1:332){
  
  Coquito <- numeric()
  
  for (i in id){
    Laysa <- read.csv(paste(directorio, "/", 
           formatC(i, width = 3, flag = "0"),".CSV", sep = ""))
   
     Coquito <-c(Coquito, sum(complete.cases(Laysa)))
    
    
  }
  return(data.frame(id, Coquito))
}
completos("specdata", 70:74)