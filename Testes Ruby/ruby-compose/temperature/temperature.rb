# frozen_string_literal: true

class Temperature
  def initialize(value, unit)
    @value = value
    @unit = unit
    @value = convert_to_c
    @unit = 'C'
  end

  def to_fahrenheit
    value = ((@value * 9) / 5.0) + 32
    p "Fahrenheit #{value}"
  end

  def to_kelvin
    value = @value + 273.15
    p "Kelvin #{value}"
  end

  def to_celsius
    value = @value
    p "Celsius #{value}"
  end

  def convert_to_c
    unit = @unit
    case unit
    when 'C'
      @value
    when 'K'
      @value - 273.15
    when 'F'
      ((@value - 32) * 5) / 9.0
    end
  end
end

temperature = Temperature.new(22, 'C')
temperature.to_celsius
temperature.to_fahrenheit
temperature.to_kelvin
