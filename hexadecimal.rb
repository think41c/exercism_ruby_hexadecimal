class Hexadecimal
  def initialize(hex)
    @hex = hex.to_i
    hex_to_dec = { A: 10, B: 11, C: 12, 
                   D: 13, E: 14, F: 15 }
    puts hex_to_dec[:A]

  end

  def to_decimal
    16**0 * @hex
  end

end

a = Hexadecimal.new(1)

