require 'minitest/autorun'
require_relative '../temperature/temperature'

class TemperatureTest < Minitest::Test

    def test_kelvin_to_fahrenheit
        temperature = Temperature.new(42,'K')
        assert_equal "Fahrenheit #{-384.07}", temperature.to_fahrenheit
    end


    def test_kelvin_to_celsius
        temperature = Temperature.new(182,'K')
        assert_equal "Celsius #{-91.14999999999998}", temperature.to_celsius
    end

    def test_celsius_to_kelvin
        temperature = Temperature.new(22,'C')
        assert_equal "Kelvin #{295.15}", temperature.to_kelvin
    end

    def test_celsius_to_fahrenheit
        temperature = Temperature.new(40,'C')
        assert_equal "Fahrenheit #{104.0}", temperature.to_fahrenheit
    end

    def test_fahrenheit_to_kelvin
        temperature = Temperature.new(54,'F')
        assert_equal "Kelvin #{285.3722222222222}", temperature.to_kelvin
    end

    def test_fahrenheit_to_celsius
        temperature = Temperature.new(77,'F')
        assert_equal "Celsius #{25.0}", temperature.to_celsius
    end

    

    def test_convert_to_celsius
        temperature = Temperature.new(30,'K')
        assert_equal -243.14999999999998, temperature.convert_to_c
    end
    


end
