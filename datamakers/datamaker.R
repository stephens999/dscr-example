datamaker = function(seed,args){

  set.seed(seed)
  

#meat of function
  
  nsamp=args$nsamp
  disttype=args$disttype

  if(disttype=="normal"){
    input = list(x=rnorm(nsamp,0,1))
    meta =  list(truemean=0)
  }
  
  if(disttype=="uniform"){
    input = list(x=runif(nsamp,-1,1))
    meta = list(truemean=0)
  }
  
  if(disttype=="Cauchy"){
    input = list(x=rt(nsamp,df=1))
    meta = list(truemean=0)
  }
  #end of meat of function
  
  data = list(meta=meta,input=input)
  
  return(data)

}
