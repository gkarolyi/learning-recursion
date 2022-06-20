# Write a recursive function that computes the sum of all numbers from 1 to _n_,
# where _n_ is given as parameter.
# This algorithm caches previous results to avoid unnecessary recalculations,
# but still runs into a StackError for large values of _n_.
def sum(n)
  return cache[n] if cache[n]
  return n if n == 1

  cache[n] = n + sum(n - 1)
end

private

def cache
  @cache ||= {}
end
