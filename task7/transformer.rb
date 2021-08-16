class StateAggregation
  attr_accessor :status
  
  def initialize(status)
    @status = status
  end

  def melt
    if @status == 'твердое'
      @status = 'жидкое'
    else
      puts "воспользуйтесь другим методом"
    end
  end

  def freeze 
    if @status == 'жидкое'
      @status = 'твердое'
    else 
      puts 'воспользуйтесь другим методом'
    end
  end
  
  def boil
    if @status == 'жидкое'
      @status = 'газообразное'
    else 
      puts 'воспользуйтесь другим методом'
    end
  end
  
  def condence
    if @status == 'газообразное'
      @status = 'жидкое'
    else 
      puts 'воспользуйтесь другим методом'
    end
  end

  def sublime
    if @status == 'твердое'
      @status = 'газообразное'
    else 
      puts 'воспользуйтесь другим методом'
    end
  end
  
  def deposit
    if @status == 'газообразное'
      @status = 'твердое'
    else 
      puts 'воспользуйтесь другим методом'
    end
  end
end

object = StateAggregation.new('жидкое')
p object.status
object.freeze
p object.status