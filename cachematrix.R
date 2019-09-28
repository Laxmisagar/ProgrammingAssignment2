## In makeCacheMatrix Using get and set functions, I try to incert a matrix into the function and store its inverse through solve() function in "m". In the other function, the 1st (makeCacheMatrix) is called so that the user provided matrix is compared with the invarse that has already been cached, if not then the invarse is calculated seperately and displayed.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set = function(y) {
x <<- y
m <<- NULL
}
get = function() {
 x
}
setinvarse = function(x){
m <<- solve(x)
}
getinvarse = function() {
m
}
list(set = set, get = get,
setinvarse = setinvarse,
getinvarse = getinvarse)
}


## Takes an input from the user and provides its invarse, if the cache is already calculated and stored in the cache "m", then returns it, or calculates.
cacheSolve <- function(y, ...) {
x=makeCacheMatrix(y)
m <- x$getinvarse()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data)
x$setinvarse(m)
return(m)
}

