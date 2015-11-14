class Raindrops

  VERSION = 1

  def self.convert(n)
    pling_string = ''

    if n % 3 == 0
      pling_string += "Pling"
    end

    if n % 5 == 0
      pling_string +="Plang"
    end

    if n % 7 == 0
      pling_string += "Plong"
    end

    unless pling_string.empty?
      return pling_string
    else
      return n.to_s
    end

  end

end
