makeCacheMatrix <- function(m = matrix()) {
  ## studnt: Dario H. Romero
  ## course: programming in R (rprog-012)
  ## date  : 2015-03-22
  
  ## @x: a square invertible matrix
  ##
  ## makeCacheMatrix  creates a special "matrix", 
  ## which is really a list containing a function 
  ## to:
  ##
  ## return: list containing functions for
  ##         1 - set the matrix (set)
  ##         2 - get the matrix (get)
  ##         3 - set the matrix-inverted (setInv)
  ##         4 - get the matrix-inverted (getInv)
  ##    
  
  ## matrix object initialization
  inv <- NULL
  
  ## setMatrix function
  set <- function(y){
    m <<- y
    inv <<- NULL
  }
  
  ## getMatrix function
  get <- function() m
  
  ## setMatrix inverted function
  setInv = function(solve) inv <<- solve

  ## getMatrix inverted function
  getInv = function() inv

  ## returning list of functions
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}