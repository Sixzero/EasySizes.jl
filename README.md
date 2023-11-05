# EasySizes.jl

A simple, lightweight julia package for comparing/checking array sizes. This package introduces custom types that enable expressive and readable size comparisons without being opinionated. 

## Installation

```
add EasySizes
```

## Usages examples
```julia
vec = [1, 2, 3]
vec > 2Len  # equals length(vec) > 2

arr = randn(2,3)
arr > 2S{1} # size(arr, 1) > 2
arr < 4S{2} # size(..., 2)
```

I would like to make a consensus the way we can compare array sizes.


##### Feel free to submit any idea! I like to be lazy and finding more expressive ways to write code!
