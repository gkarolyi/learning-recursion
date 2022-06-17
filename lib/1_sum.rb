# Write a recursive function that computes the sum of all numbers from 1 to _n_, where _n_ is given as parameter.

def sum(n)
  return cache[n] if cache[n]
  return n if n == 1

  cache[n] = n + sum(n - 1)
end

private

def cache
  @cache ||= {}
end
