setwd("~/GitHub/Programacion-Actuarial-III/")

corr <- function(directorio, horizonte = 0){
  setwd("~/GitHub/Programacion-Actuarial-III/")
  
  source("completos.R")
  amor1 <- completos(directorio)
  amor2 <- amor1[amor1["Coquito"] > horizonte, ] $id
  
  cat3 <- numeric()
  
  for(i in amor2) {
    DIRF <- read.csv(paste(directorio, "/", formatC(i, width = 3, 
            flag = "0",".csv"), sep = ""))
    amor4 <- DIRF[complete.cases(DIRF), ]
    amor3 <- c(amor3, cor(amor4$sulfate, amor4$nitrate))
  }
  return(cat3)
}
corr("specdata", 1 )
