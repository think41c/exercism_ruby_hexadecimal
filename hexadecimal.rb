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

  def to_decimal
    counter = 0 
    place   = -1

    until counter >= @length_of_hex
      num_to_convert = @hex[place]
      result = 16**counter * @hex_to_dec[num_to_convert]
      counter += 1 
      place -= 1
    end
    result
  end

end

a = Hexadecimal.new('10').to_decimal
p a
