## he first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to

## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the inverse of the Matrix
## 4.get the value of the inverse of the matrix

## This function creates a special "matrix" object that can cache its inverse.We assume that the matrix created have an inverse and we can obtain it through Solve (X)

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<- function (y){
    x<<-y
    i<<-NULL
  }
  get <- fuction()x
  setinverse <- function(solve) i <<- inver
  getinverse <- function()i
  list(set=set, get=get,
       setinverse=setinverse
       getinverse=getinverse)
  
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  i<- x$getinverse()
if(!is.null(i)) {
  message("getting cached data")
  return(i)
}
  data<- x$get()
  i<- solve(data,...)
  x$setinverse(i)
  i
}