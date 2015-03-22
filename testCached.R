testCached = function(m) {
  
  ## mat: an invertible matrix
  
  t <- makeCacheMatrix(m)
  
  start.Time <- Sys.time()
  cacheSolve(t)
  print(format(round((Sys.time() - start.Time), 16), nsmall=16))
  
  start.Time <- Sys.time()
  cacheSolve(t)
  print(format(round((Sys.time() - start.Time), 16), nsmall=16))
  
}