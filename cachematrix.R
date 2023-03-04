## Put comments here that give an overall description of what your
## functions do

## Build the inverse matrix and return its data to the parent environment

makeMatrix <- function(x = matrix()) {
  inversex <- NULL
  set <- function(y) {
    x <<- y
    inversex <<-NULL
  }
  get <- function() x
  setinverse <-function(solve) inversex <<- solve
  getinverse <- function() inversex
  list (set =set, get=get,
        setinverse=setinverse, getinverse=getinverse)
}


## Code block to retrieve Matrix and populate

cacheinverse <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversex <- x$getinverse()
    if(!is.null(inversex)) {
      message("getting cached data")
      return(inversex)
    }
    data <- x$get()
    inversex <- solve(data, ...)
    x$setinverse(inversex)
    inversex
  }

