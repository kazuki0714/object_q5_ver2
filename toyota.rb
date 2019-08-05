require_relative 'car'

class Toyota < Car

  def initialize(type, speed,  price, capacity, height, passenger)
    super(type, price*0.8,  price, capacity, height, passenger)
  end
end
