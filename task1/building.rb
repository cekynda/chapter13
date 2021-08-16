# Task 1
class Building
  attr_accessor :number_of_floors, :tenants 
  @@buildings = []

  def self.buildings
    @@buildings
  end
  
  def initialize(number_of_floors, tenants )
    @number_of_floors = number_of_floors
    @tenants  = tenants 
    @@buildings << self
  end

  def build_a_floor(number)
    @number_of_floors += number
  end

  def add_tenants(people)
    @tenants += people
  end
end
