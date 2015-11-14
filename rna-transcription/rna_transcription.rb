class Complement

  VERSION = 2

  def self.of_dna(strand)
    conversion_dict = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }

    strand_array = strand.split(//)

    strand_array.each { |n| raise ArgumentError if !conversion_dict.keys.include?(n) }

    strand_array.map! { |n| n = conversion_dict[n] }
    return strand_array.join('')
  end

  def self.of_rna(strand)
    conversion_dict = {
      'G' => 'C',
      'C' => 'G',
      'U' => 'A',
      'A' => 'T'
    }

    strand_array = strand.split(//)

    strand_array.each { |n| raise ArgumentError if !conversion_dict.keys.include?(n) }

    strand_array.map! { |n| n = conversion_dict[n] }
    return strand_array.join('')
  end
end

