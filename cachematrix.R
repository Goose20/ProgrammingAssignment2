## its a pair of functions to calculate and cache the inverse of a matrix

## 1 set the value of the matrix
## 2 get the value of the matrix
## 3 set the inverse of the matrix
## 4 get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


##  it first checks if the inverse has been solved, if so it gets the inverse 
## from the cache and skips the computation. Otherwise, it calculates the 
## inverse of the matrix and set the inverse of the matrix in the cache with 
## the setInverse function

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
