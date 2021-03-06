module Hamming

  def self.compute(s1, s2)
    s1.chars.zip(s2.chars).count { |(a,b)| b && a != b }
  end
end