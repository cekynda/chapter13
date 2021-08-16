# frozen_string_literal: true

class Integer
  def minutes
    self * 60
  end

  def hours
    self * 3600
  end

  def days
    self * 86_400
  end
end

p 5.minutes # => 300 doljna vivesti
p 2.hours # =>  7200 cekynd
p 1.days # => 86400 cekynd
