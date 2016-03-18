## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL
    set <-function(y){
      x <<- y
      inv <<- NULL
    }
    get <-function() x  
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set=set,get=get,getInverse=getInverse,setInverse=setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inv<-x$getInverse()
          #check if the matrix is NULL . If not NULL , it is bring the results from Cache.
          if (!is.null(inv))
          {
              message("getting cached data")
              return(inv)
          }
          data <- x$get()
          # solve()function is responsible for doing the inverse ofthe matrix provided.
          inv <-solve(data)
          x$setInverse(inv)
          inv
}
