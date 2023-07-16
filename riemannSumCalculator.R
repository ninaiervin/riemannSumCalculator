# setting up paramiters
n = 6
a = -1
b = 1
x = (b-a)/n
x
g = a

# finding the values of x
for (i in 1:n) {
	g[i+1] = g[i]+x
}
g

# finding the points for the left end
sub.low = g[1:n]
sub.low

#finding the points for the right end
sub.high = g[2:(n+1)]
sub.high

# find the x componets for the midpoint method
midx = 0
mid = cbind(sub.low, sub.high)
mid
for (i in 1:n){
	midx[i] = (mid[i,1] + mid[i,2])/2
}
midx

#setting up function
f = function(x) {
	y = x*2.71828^x
	return(y)
}

#finding y valuses for sub.low
y.low = 0
for (i in 1:n) {
	y.low[i] = f(sub.low[i])
}
y.low

#find y valuses for sub.high
y.high = 0
for (i in 1:n) {
	y.high[i] = f(sub.high[i])
}
y.high

#find y valuses for midx
mid.y = 0
for (i in 1:n){
	mid.y[i] = f(midx[i])
}
mid.y

# find area for low
area.low = sum(y.low)*x
area.low

# find area for high
area.high = sum(y.high)*x
area.high

# find area midpoint
area.mid = sum(mid.y)*x
area.mid


#set up paramiters
n = 4
a = 0
b = 2
x = (b-a)/n
x
g = a

#finding all the x's
for (i in 1:n) {
	g[i+1] = g[i]+x
}
g

# finding the points for the left end
sub.low = g[1:n]
sub.low

#finding the points for the right end
sub.high = g[2:(n+1)]
sub.high

# find the x componets for the midpoint method
midx = 0
mid = cbind(sub.low, sub.high)
mid
for (i in 1:n){
	midx[i] = (mid[i,1] + mid[i,2])/2
}
midx

#setting up function
f = function(x) {
	y = 2.71828^x^(2)
	return(y)
}

#find y valuses for midx
mid.y = 0
for (i in 1:n){
	mid.y[i] = f(midx[i])
}
mid.y

# find area midpoint
area.mid = sum(mid.y)*x
area.mid

#find the valuses for the Trapezoid rule
trap.y = 0
for (i in 1:(n+1)) {
	trap.y[i] = f(g[i])
}	
trap.y 

#find the area for the Trapezoid rule
area.trap = x/2*(trap.y[1]+trap.y[n+1]+2*sum(trap.y[2:n]))
area.trap

