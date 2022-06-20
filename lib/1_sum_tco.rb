# Write a recursive function that computes the sum of all numbers from 1 to _n_,
# where _n_ is given as parameter.
# This algorithm makes use of Ruby's tail-call optimisation, which effectively
# turns this recursion into a loop at compile time in order to keep the
# stack size constant.
#
RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

# in order to use tail call optimisation, the method must be recompiled after
# setting the option
RubyVM::InstructionSequence.new(<<-EOS).eval
  def sum(n, acc = 1)
    return acc if n <= 1

    sum(n - 1, n + acc)
  end
EOS
