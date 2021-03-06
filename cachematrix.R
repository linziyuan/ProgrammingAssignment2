## Caching the Inverse of a Matrix

## Creates special "matrix" to set/get the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
   m <- NULL
   set <- function(y) {
      x <<- y
      m <<- NULL
   }
   get <- function() x
   setinv <- function(inv) m <<- inv
   getinv <- function() m
   list(set = set, get = get,
        setinv = setinv,
        getinv = getinv)
}

## Retrieves cached inverse of special matrix if present, otherwise calculates inverse and sets the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   m <- x$getinv()
   if(!is.null(m)) {
      message("getting cached data")
      return(m)
   }
   data <- x$get()
   m <- solve(data,, ...)
   x$setinv(m)
   m
}
