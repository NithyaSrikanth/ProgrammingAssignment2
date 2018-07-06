## Put comments here that give an overall description of what your
## functions do

## first function is about caching. Shows the environment in which x and inv are stored

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function() inv <<- solve(x) #calculate the inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Second function is a followup on the first. It reads the matrix and the output is given in inverse form

cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
        prog <- makeCacheMatrix()
prog$set(matrix(4:7, 2))
prog$get()
#     [,1] [,2]
#[1,]    4    6
#[2,]    5    7
prog$setInverse()
prog$getInverse()
#     [,1] [,2]
#[1,]   -3.5  3
#[2,]    2.5 -2
}
