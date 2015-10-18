## Put comments here that give an overall description of what your
## functions do 

## This function returns the inverse of matrix, and use caching in case the inverse
## was done before to enhance performance

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(mean) m <<- mean
    getinverse <- function() m
    list(set = set, get = get,
         getinverse = getinverse,
         setinverse = setinverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
    ## Return a matrix that is the inverse of 'x'
}
