class Time
  def self.hello
    if self.now.hour.between?(6, 12)
      puts 'Доброе утро'
    elsif self.now.hour.between?(12, 18)
      puts 'Добрый день'
    elsif self.now.hour.between?(18, 0)
      puts 'Добрый вечер'
    elsif self.now.hour.between?(0, 6)
      puts 'Доброй ночи'
    end
  end
end

Time.hello