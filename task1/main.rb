require_relative 'building'

puts "Первое здание"
first_building = Building.new(5, 50)
first_building.build_a_floor(2)
puts "Количество этажей в первом здании #{first_building.number_of_floors}"
first_building.add_tenants(15)
puts "Количество жильцов в первом здании: #{first_building.tenants}"
puts "Второе здание"
second_building = Building.new(3, 20)
puts "Количество этажей во втором здании: #{second_building.number_of_floors}"
puts "Количество жильцов во втором здании: #{second_building.tenants}"
puts "Колличество зданий: #{Building.buildings.size}"