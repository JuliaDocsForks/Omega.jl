# Cheat Sheet

## Core Functions
The major functions that you will use in Omega are:

- [ciid(x)]() : that is equal in distribution to `x` but conditionally independent given parents
- [iid(x)]() : that is equal in distribution to `x` but independent
- [cond(x, y)](inference.md#cond) : condition random variable `x` on condition `y`
- [rand(x, n; alg=Alg)](inference.md#cond) : `n` samples from (possibly conditioned) random variable `x` using algorithm `ALG`
- [replace(x, θold => θnew)](causal.md#replace) : causal intervention in random variable
- [rid(x, θ)]()  : distribution interventional distribution of `x` given `θ`  
- [rcd(x, θ) or x ∥ θ]()  : random conditional distribution of `x` given `θ`

## FAQ

- How to sample from a joint distribution (more than one random variable at a time)?
Pass a tuple of random variables, e.g: `rand((x, y, z))`.

## Built-in Distributions

[bernoulli(w)](distributions.md#Omega.bernoulli) [boolbernoulli(w)](distributions.md#Omega.boolbernoulli)
betarv
categorical
constant
exponential
gammarv
invgamma
kumaraswamy
logistic
poisson
normal
uniform
rademacher

## Built-in Inference Algorithms

RejectionSample
MI
SSMH
SSMHDrift
HMC
HMCFAST