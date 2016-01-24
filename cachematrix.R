## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##initially cache set to null
i <- NULL
    set <- function(y) {
        x <<- y
##null the cache as matrix is assigned y
        i <<- NULL
    }
##returns the matrix
    get <- function() x
    setinverse <- function(inv) i <<- inv
##get the cached value	
    getinverse <- function() i
##Return List
    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
    )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
## get the cached value
 i <- x$getinverse()
## if function to return if there exists a cached value
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
## if there is no cached value get the matrix,calculate the inverse and store it in cache
    m <- x$get()
    i <- solve(m, ...)
    x$setinverse(i)
    i
}
