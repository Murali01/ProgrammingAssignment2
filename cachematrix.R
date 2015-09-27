## makeCacheMatrix stores the matrix input and the second function 'CachesolVE' inverts the matrix to get the matrix inverse. Prints solution if solution  is not available in cache, else gives output from cache.
## functions do

## makeCacheMatrix stores the input as well as the cache that is updated after we call the second function

makeCacheMatrix <- function(x = matrix()) {  

   m <- NULL
  
  set <- function(y) {
    x <<- y
  }
   # not needed unless we want to change the vector in main func

get <- function() x # function that retrives main vector
setinv <- function(matrix) m<<-matrix
  
getinv<- function() m
list(set = set, get = get,
     setinv = setinv,
     getinv = getinv)

}


## cacheSolve inverts the matrix and  provides solution. If the function is called a second time, if will check if the answer is present in cache and then retrive from cache.

cacheSolve <- function(x, ...) {

  m <- a$getinv()		
  if(!is.null(m)) {
    message("This is cached data")
    return(m)
  }
  data <- x$get()
  k<-solve(data)
  a$setinv(k)
  k
        ## Return a matrix that is the inverse of 'x'
}
