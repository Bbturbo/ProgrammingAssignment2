## Put comments here that give an overall description of what your
## functions do
### The makeCacheMatrix function creates a special matrix object that can cache its inverse

## Write a short comment describing this function
### set the value of the martrix
### get the value of the matrix
### set the value of the inverse
### get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

}
# Answer 1
makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function(){x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) 
}

## Write a short comment describing this function
### function calculates the inverse
### checks if inverse has already been calculated
### if yes, print message "getting cache data", get the inverse from the cache and skips calculation
### Else calculate inverse, set the inverse in the cache via the setinIverse function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
# Answer 2
cacheSolve <- function(x, ...){
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}