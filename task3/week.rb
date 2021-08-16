class Week
  include Enumerable
  
  def initialize(*day_of_week)
   @day_of_week = day_of_week
  end
 
  def each
   for i in @day_of_week
   yield(i)
   end
  end
 end
 
 week = Week.new("Понедельник", "вторник", "среда", "четверг", "пятница", "суббота", "воскресенье")
 week.map {|i| puts i}