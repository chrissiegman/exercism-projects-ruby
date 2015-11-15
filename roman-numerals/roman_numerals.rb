class Fixnum

  VERSION = 1

  def to_roman
    roman_array = []
    number = self

    while number >= 1000 && number < 3001
      roman_array.push('M')
      number -= 1000
    end

    while number >= 900 && number < 1000
      roman_array.push('CM')
      number -= 900
    end

    while number >= 500 && number < 1000 
      roman_array.push('D')
      number -= 500
    end

    while number >= 400 && number < 500
      roman_array.push('CD')
      number -= 400
    end

    while number >= 100 && number < 500
      roman_array.push('C')
      number -= 100
    end

    while number >= 90 && number < 100
      roman_array.push('XC')
      number -= 90
    end

    while number >= 50 && number < 100
      roman_array.push('L')
      number -= 50
    end

    while number >= 40 && number < 50
      roman_array.push('XL')
      number -= 40
    end

    while number >= 10 && number < 50
      roman_array.push('X')
      number -= 10
    end

    if number == 9
      roman_array.push('IX')
      number -= 9
    end

    while number >= 5 && number < 10
      roman_array.push('V')
      number -= 5
    end

    if number == 4
      roman_array.push('IV')
      number -= 4
    end

    while number >= 1 && number < 4
      roman_array.push('I')
      number -= 1
    end

    return roman_array.join('') 
  end

end
