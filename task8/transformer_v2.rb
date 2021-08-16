require 'state_machines'

class StateAggregation
  attr_accessor :state

  StateMachines::Machine.ignore_method_conflicts = true

  state_machine :state, :initial => :status do
    event :melt do
      transition :solid => :liquid
    end

    event :freeze do
      transition :liquid => :solid
    end

    event :boil do
      transition :liquid => :gaz      
    end
    
    event :condense do
      transition :gaz => :liquid      
    end

    event :sublime do
      transition :solid => :gaz
    end
    
    event :deposit do
      transition :gaz => :solid
    end
  
    state :solid  do
      def solid
        @state = 'solid'
      end
    end

    state :gaz do
      def gaz
        @state = 'gaz'
      end
    end

    state :liquid do 
      def liquid
        @state = 'liquid'
      end
    end
  end
  
  def initialize(state)
    @state = state
  end
end

object = StateAggregation.new('solid')

p object.state
object.melt
p object.state
object.freeze
p object.state
object.sublime
p object.state
object.deposit
p object.state
object.melt
p object.state 
object.boil
p object.state
object.melt 
p object.state # должно остаться  "gaz" # #
object.deposit # поменяться в твердое
p object.state #