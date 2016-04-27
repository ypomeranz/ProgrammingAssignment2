## Put comments here that give an overall description of what your
## functions do



#testmatrix
#z <- matrix(1:4,2,2)

## This function converts a matrix into a matrix that saves its inverse in cache. 
## Use variable$getmatrix to print the original matrix

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	getmatrix <- function() x
	setinverse <- function(y = x){
		inverse <<- solve(y)
	}
	getinverse <- function() inverse
	list (setinverse = setinverse, getinverse = getinverse, getmatrix=getmatrix)
}


## Gets the inverse of a cache matrix from cache or by calculation

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getinverse()
			if (!is.null(m)){
				message('retrieving cached matrix')
				return(m)
			}
			else{
			x$setinverse()
			x$getinverse()
			
			}
}
