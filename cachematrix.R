## Put comments here that give an overall description of what your
## functions do

## This function just asssigns x to a cachable variable and returns this variable

makeCacheMatrix <- function(x = matrix()) {
  hoseyboh <<- x
  return(hoseyboh)
}


## This function uses the solve() function to get the inverse of x. 
## If the inverse is already calculated, do not calculate again. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if (identical(origin_x,x)
      return (solved)
      else
        origin_x <<- x
      solved <<- solve(x)
      return (solved)  
}
