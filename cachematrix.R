## The next functions calculate the inverse of the matrix and saves it
## towards the cache so that next time the consumer tries to calculate the
## matrix inverse, the formerly saved value is came back rather than
## repeating the calculation.
## This function produces a unique "matrix" object, that is really a listing
## that contains the purpose to
#One. set the need for the matrix
#Two. get the need for the matrix
#Three. set the need for the inverse
#Four. get the need for the inverse

makeCacheMatrix <- function(x = matrix()) 

        get <- function() x ## return the matrix x
        setinverse <- function(inverse) m <<- inverse ## set the cache m equal
        ## to the inverse of the matrix x
        getinverse <- function() m ## return the cached inverse of x
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)


## The next function calculates the inverse from the special "matrix" created
## using the above function. However, it first checks to find out if the inverse
## was already caclulated. If that's the case, it 'get's the inverse in the cache
## and skips the computation. Otherwise, it calculates the matrix inverse
## and sets the need for the inverse within the cache through the 'setinverse' function.

cacheSolve <- function(x, ...) 

        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
