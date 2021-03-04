## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function - Creates a matrix and sets, gets the values and sets, gets the inverse

makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) a <<- inverse
  getinverse <- function() a
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function - Checks if a matrix inverse is cached. If so, it fetches the data from cache else computes the inverse of the matrix.

cacheSolve <- function(x, ...) {
  a <- x$getinverse()
  if (!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setinverse(a)
  a
        ## Return a matrix that is the inverse of 'x'
}
