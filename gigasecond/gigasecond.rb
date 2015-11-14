require 'time'

class Gigasecond

  VERSION = 1

  def self.from(time)
    shifted_integer_time = time.to_i + (10**9)
    return Time.at(shifted_integer_time)
  end
end
