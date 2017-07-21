def factorial(integer)
  # (1..integer).inject(:*) || 1
  downto(2).inject(1, :*) unless negative?
end

module FactorialRefinement
  refine Integer do
    def factorial
      (1..self).inject(:*) || 1
    end
  end
end

class Pk
  using FactorialRefinement

  def x n
    n.factorial
  end
end
