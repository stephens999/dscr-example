#This file should define your score function

score = function(data, output){
#insert calculations here; return a named list of results
  return(list(squared_error = (data$meta$truemean-output$meanest)^2, abs_error = abs(data$meta$truemean-output$meanest)))
}
