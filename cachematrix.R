## Put comments here that give an overall description of what your
## functions do

## This function create a special variable that can store 2 sub-variables
## the original matrix, and the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse){ s <<- inverse}
        getinverse <- function() s
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function uses the solve() function to get the inverse of the matrix inside x, 
## And then stores it in the inverse variable of x.
## If the inverse is already cached in x, do not calculate and just return the inverse of x

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
        s <- x$getinverse()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m
}

