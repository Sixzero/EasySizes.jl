module EasySizes

export Len, S
greet() = print("Hello World!")
struct Len v::Int end
Base.:(*)(v::Int, ::Type{Len}) = Len(v)
Base.isless(x, c::Len) = isless(length(x), c.v)
Base.isless(c::Len, x) = isless(c.v, length(x))
Base.:(==)(x, c::Len) = length(x) == c.v
Base.:(==)(c::Len, x) = c.v == length(x)

struct S{N} v::Int end
Base.:(*)(v::Int, ::Type{S{N}}) where{N} = S{N}(v)
Base.isless(x, c::S{N}) where {N} = isless(size(x, N), c.v)
Base.isless(c::S{N}, x) where {N} = isless(c.v, size(x, N))
Base.:(==)(x, c::S{N}) where {N} = size(x, N) == c.v
Base.:(==)(c::S{N}, x) where {N} = c.v == size(x, N)

end # module EasySizes
