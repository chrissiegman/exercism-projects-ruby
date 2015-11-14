class Hamming

  VERSION = 1

  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    count = 0
    for i in (0...strand1.length)
      if strand1[i] != strand2[i]
        count += 1
      end
    end
    return count
  end
end
