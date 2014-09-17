## First function makeCacheMatrix(), takes in a matrix and returns a variable
## capable of storing the matrix and its inverse matrix.
## The second function, cacheSolve() reads from a variable that is created via makeCacheMatrix(),
## calculates, and returns the inverse of the stored matrix in the variable. 
## If the inverse is available in the variable, it does not calculate and returns the 
## stored inverse matrix instead.

## This function creates a special variable that can store 2 sub-variables:
## the original matrix, and the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) s <<- inverse
        getinverse <- function() s
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function uses the solve() function to calculate the inverse of the matrix inside x, 
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

