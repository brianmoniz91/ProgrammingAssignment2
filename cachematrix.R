## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix creates a list containing a function to set and get the value of the matrix as well as the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

 z<-NULL
  set<-function(y){
    x<<-y
    z<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) z<<- solve
  getmatrix<-function() z
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)

}


## Write a short comment describing this function

# The cachsolve function returns the inverse. It computes the inverse, sets the value in the cache via
# setinverse function.But if the inverse has already been computes it gets the result and skips the
# computation. 

cacheSolve <- function(x, ...) {

        z<-x$getmatrix()
  if(!is.null(z)){
    message("this is now getting the cached data in the matrix")
    return(z)
  		}
  		matrix<-x$get()
 		 z<-solve(matrix, ...)
 		 x$setmatrix(z)
 		 z
}

