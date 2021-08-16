# frozen_string_literal: true

class Factory
  @@total = []

  def self.total
    @@total
  end

  class TeddyBear
  end

  class Ball
  end

  class Cube
  end

  def self.build(symbol_of_toy)
    symbol_of_toy = "Factory::#{symbol_of_toy.to_s.split('_').collect(&:capitalize).join}"
    @@total << Object.const_get(symbol_of_toy).new
    Object.const_get(symbol_of_toy).new
  end

  def self.offers
    hash = {
      teddy_bear: nil,
      ball: nil,
      cube: nil
    }
    hash[:teddy_bear] = @@total.select { |i| i.is_a?(Factory::TeddyBear) }.count
    hash[:ball] = @@total.select { |i| i.is_a?(Factory::Ball) }.count
    hash[:cube] = @@total.select { |i| i.is_a?(Factory::Cube) }.count
    hash
  end
end

Factory.build(:ball)
Factory.build(:ball)
Factory.build(:Cube)
Factory.build(:Cube)
Factory.build(:teddy_bear)
Factory.build(:teddy_bear)
Factory.offers
