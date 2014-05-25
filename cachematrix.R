## This is a programming assignmente 2 
## Define 2 functions (makeCacheMatrix and cacheSolve )


##The makeCacheMatrix function recives the matrix and cache the variable type matrix()
## and ## Return a matrix that is the inverse of 'mta'

makeCacheMatrix <- function(mt = matrix()){   
  mtx <- mt
  
  if (!bsolve){
    mtxSC <<- matrix()
    mtxac <<- matrix()
  }
  
  return(mtx)
}

## the cacheSolve funcition inverse of matrix, if not exist, If the original matrix and actual are identical
## return de inverse matrix in cache

cacheSolve <- function(mta = matrix() ) {
    mt <-mta
    
    
    if(!is.na(mtxSC) && identical(mt,mtxac)) {
      
      message("getting cached inverse matrix")
      
      return(mtxSC)
    }
    else {
      mtxSC <<-solve(mt)
      mtxac <<- mt
      bsolve <<- T
    }
    
}

