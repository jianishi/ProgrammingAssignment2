## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mr<-NULL
  get <- function() x
  setmr<-function(x)  {mr<<-x}
  cachemr<-function() mr
  list(get=get,setmr=setmr,cachemr=cachemr)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  mr<-x$cachemr()
if(!is.null(mr)) {
  message("getting cached data")
  return(mr)
}
data<-x$get()
mare <- solve(data)
fma$setmr(mare)
mare
       
}
