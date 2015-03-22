cacheSolve <- function(x, ...) {
  ## studnt: Dario H. Romero
  ## course: programming in R (rprog-012)
  ## date  : 2015-03-22
  
  m <- x$getInv()
  
  if(!is.null(m)) {
    message("... getting cached data!!!")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInv(m)
  m  
}