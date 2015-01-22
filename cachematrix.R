## Assigment 2
## First function makes an inverse and second takes the inverse and computes

## This is the make cache matrix function 
### This function creates a special "matrix" object that can cache its inverse.
###I am used solve() to find the inverse of a matrix .

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## This is the cache Solve Function
### This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    return(m)
  }
  matrix <- x$get() 
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}


