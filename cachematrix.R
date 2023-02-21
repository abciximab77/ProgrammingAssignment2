## Put comments here that give an overall description of what your
## functions do
# 1. Set the value of matrix.
# 2. Get the value of matrix.
# 3. Set the value of inverse.
# 4. Get the value of inverse.
# 5. Compute or retrieve the value of inverse.

## Write a short comment describing this function : 
# setting/getting the values of matrix and inverse

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y){
  x <<- y
  m <<- NULL
}
get <- function()x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set, get = get, 
     setinverse = setinverse,
     getinverse = getinverse)
}


## Write a short comment describing this function:
# Computing/retrieving the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

