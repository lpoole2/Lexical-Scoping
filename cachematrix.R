## Functions are useful when we want to utilize instructions that we want done repeatedly or because of complexity.

## The function below makes a matrix that caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <- inverse
    getInverse <- function () inv
    list(set=set,
         get=get,
         setInverse=setInverse,
         getInverse=getInverse)
}


## The function below determines the inverse of the matrix from the function

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(met,..)
  x$setInverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
