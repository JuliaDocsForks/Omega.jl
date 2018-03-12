using Expect

θ = uniform(0, 1)
println("Expectation of θ is ", expectation(θ))
x = normal(θ, 1)

y = x ∈ Interval(-2, -1)

xy = cond(x, y)

println("sample from conditional random variable x | x in [-2, 1]: ",
        rand(xy))

println("Conditional expectation of x given y ≊",
        expectation(cond(x, y)))

y_ = curry(x, θ) 

println("A random variable y* sampled from y_",
        rand(y_))

Ey = expectation(y_)
println("Expectation of y_ is a random variable, a sample:",
        rand(Ey))

println("Conditional sample from θ given that expectation of y ∈ [0.4, -.6]",
        rand(θ, Ey ∈ Interval(0.4, 0.6)))

# Conditioning is infinitely composable
θ_ = cond(θ, Ey ∈ Interval(0.4, 0.6))
z = normal(θ, 1)
println("Conditional sample from z with θ_",
        rand(z))