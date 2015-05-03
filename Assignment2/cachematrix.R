## Put comments here that give an overall description of what your
## functions do

##The first function"makeCacheMatrix" creates a list of 4 functions: "set,get,setsolve,getsolve".
##And the second function caches the inverse of a matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse<-NULL
  ##1."set": set the value of the matrix
  set<-function(y){
    x<<-y
    inverse<<-NULL
  }
  
  ##2."get": get the value of the matrix
  get<-funciton() x
  
  ##3."setsolve": set the value of the inverse matrix
  setsolve<-function(t) inverse<-solve(t)
  
  ##4."getsolve": get the value of the inverse matrix
  getsolve<-function() inverse
  
  ##create a list of the above 4 functions
  list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ##get the value of solve
  inverse<-x$getsolve()
  if<-(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data<-x$get()
  ##set the inverse matrix to variable "inverse"
  x$setsolve(data)
  ##show the "inverse"
  inverse
}
