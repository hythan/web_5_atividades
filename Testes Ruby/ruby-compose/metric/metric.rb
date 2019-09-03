# frozen_string_literal: true

class Metric
  def initialize(value, unit)
    @value = value
    @unit = unit
    @value = c_to_cm
    @unit = 'cm'
  end

  def to_inch
    value = @value * 0.3937
    p "Inch #{value.round 3}"
  end

  def to_foot
    value = @value * 0.0328084
    p "Foot #{value.round 3}"
  end

  def to_cm
    value = @value
    p "Cm #{value.round 3}"
  end

  def to_metro
    value = @value * 0.01
    p "Metro #{value.round 3}"
  end

  def to_yard
    value = @value * 0.0109361
    p "Yard #{value.round 3}"
  end

  def to_km
    value = @value * 0.00001
    p "Km #{value.round 3}"
  end

  def to_mile
    value = @value * 0.0000062
    p "Mile #{value.round 3}"
  end

  def c_to_cm
    unit = @unit.downcase
    case unit
    when 'inch'
      @value * 2.54
    when 'm'
      @value * 100
    when 'cm'
      @value = @value
    when 'foot'
      @value * 30.48
    when 'yard'
      @value * 91.44
    when 'km'
      @value * 100_000
    when 'mile'
      @value * 160_934
    end
  end
end

metric = Metric.new(2, 'km')

metric.to_foot
metric.to_inch
metric.to_cm
metric.to_metro
metric.to_yard
metric.to_km
metric.to_mile
