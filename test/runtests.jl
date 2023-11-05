using Test
using EasySizes

@testset "Length comparisons" begin

@test [1, 2, 3] > 2Len
@test [1, 2, 3] < 4Len
@test [1, 2, 3] == 3Len

end
@testset "Size comparisons" begin
  @test [1, 2, 3] > 2S{1}
  @test [1, 2, 3] < 4S{1}
  @test [1, 2, 3] == 3S{1}
  # For multi-dimensional arrays, you can specify the dimension as a type parameter
  @test ones(3, 3) > 2S{2}  # Check if the second dimension is greater than 2
  @test ones(3, 3) == 3S{2} # Check if the second dimension is equal to 3
end
