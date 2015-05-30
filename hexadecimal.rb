class Hexadecimal
  def initialize(hex)
    @length_of_hex = hex.length
    @hex = hex.upcase
    @hex_to_dec = { "0" => 0, 
                    "1" => 1, "2" => 2, "3" => 3, 
                    "4" => 4, "5" => 5, "6" => 6, 
                    "7" => 7, "8" => 8, "9" => 9, 
                    "A" => 10,"B" => 11,"C" => 12, 
                    "D" => 13,"E" => 14,"F" => 15 
                  }
  end
# af
# 15 x 16^0
# 10 x 16^1

  def to_decimal
    counter = 0 
    place   = -1
    result  = 0 

    until counter >= @length_of_hex
      num_to_convert = @hex[place]
      digit = 16**counter * @hex_to_dec[num_to_convert]
      result += digit
      counter += 1 
      place -= 1
    end
    result
  end

end

a = Hexadecimal.new('af').to_decimal
p a
