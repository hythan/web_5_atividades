require 'minitest/autorun'
require_relative '../metric/metric'

class MetricTest < Minitest::Test

    def test_inch_to_metro
        metric = Metric.new(100,'inch')
        assert_equal "Metro #{2.54}", metric.to_metro
    end

    def test_inch_to_mile
        metric = Metric.new(798,'inch')
        assert_equal "Mile #{0.013}", metric.to_mile
    end

    def test_cm_to_inch
        metric = Metric.new(10, 'cm')
        assert_equal "Inch #{3.937}", metric.to_inch
    end

    def test_cm_to_km
        metric = Metric.new(3555.45, 'cm')
        assert_equal "Km #{0.036}", metric.to_km
    end

    def test_cm_to_foot
        metric = Metric.new(3555, 'cm')
        assert_equal "Foot #{116.634}", metric.to_foot
    end

    def test_km_to_foot
        metric = Metric.new(2, 'km')
        assert_equal "Foot #{6561.68}", metric.to_foot
    end


    def test_metro_to_yard
        metric = Metric.new(23.1, 'm')
        assert_equal "Yard #{25.262}", metric.to_yard
    end

    def test_yard_to_km
        metric = Metric.new(43.02, 'yard')
        assert_equal "Km #{0.039}", metric.to_km
    end

    def test_km_to_mile
        metric = Metric.new(1, 'km')
        assert_equal "Mile #{0.62}" , metric.to_mile
    end

    def test_mile_to_cm
        metric = Metric.new(1,'mile')
        assert_equal "Cm #{160934}", metric.to_cm
    end

    def test_mile_to_metro
        metric = Metric.new(1,'mile')
        assert_equal "Metro #{1609.34}", metric.to_metro
    end

    def test_convert_to_cm
        metric = Metric.new(1,'m')
        assert_equal 100, metric.c_to_cm
    end
    
    def test_convert_to_com_2
        metric = Metric.new(1,'km')
        assert_equal 100000, metric.c_to_cm
    end





end

