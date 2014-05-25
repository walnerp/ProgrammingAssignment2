makeCacheMatrix <- function(mt = matrix()){   
  mtx <- mt
  
  if (!bsolve){
    mtxSC <<- matrix()
    mtxac <<- matrix()
  }
  
  return(mtx)
}

## Return a matrix that is the inverse of 'mta'


  
cacheSolve <- function(mta = matrix() ) {
    mt <-mta
    ## if the inverse of matrix not exist and the original matrix and actual are identical
    ## return de inverse matrix in cache
    
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

