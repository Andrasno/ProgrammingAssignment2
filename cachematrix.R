## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## ## This function creates a special matrix object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {

inve <- NULL
set <- function(y) {
	x <<- y
	inve <<- NULL
}
get <- function() x
setInverse <- function (inverse) inverse <<- inve
getInverse <- function() inve
list(set = set, 
	get = get, setInverse = set Inverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inve <- x$getInverse()
if(!is.null(inve)){
return(inve)
}
mat <- x$get()
inve <- solve(mat, ...)
x$setInverse(inve)
inve
}
