require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/benchmark'
require_relative '../lib/1_sum_tco'

class TailCallOptimisedSumTest < Minitest::Test
  def test_sum_1
    expected = 1
    assert_equal(expected, sum(1))
  end

  def test_sum_2
    expected = 3
    assert_equal(expected, sum(2))
  end

  def test_sum_3
    expected = 6
    assert_equal(expected, sum(3))
  end

  def test_sum_5
    expected = 15
    assert_equal(expected, sum(5))
  end

  def test_sum_50
    expected = 1275
    assert_equal(expected, sum(50))
  end
end

class RecursiveSumBenchmark < Minitest::Benchmark
  def self.bench_range
    [1, 10, 100, 1000, 5000, 10_000, 50_000, 100_000]
  end

  def bench_sum
    assert_performance_linear 0.95 do |n|
      sum(n)
    end
  end
end
