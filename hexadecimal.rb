class Hexadecimal
  def initialize(hex)
    @length_of_hex = hex.length
    @hex = hex.to_i
    hex_to_dec = { A: 10, B: 11, C: 12, 
                   D: 13, E: 14, F: 15 }
    puts hex_to_dec[:A]

  end

  def to_decimal
    counter = 0 
    
    until counter >= @length_of_hex
      result = 16**counter * @hex
      counter += 1 
    end
    result
  end

end

a = Hexadecimal.new("1")
a.to_decimal
