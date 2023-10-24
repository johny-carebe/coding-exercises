require_relative 'hotel'

class HotelChain
  attr_accessor :hotels

  def initialize
    @hotels = []
  end

  def add_hotel(name, rooms)
    hotel = create_hotel(name, rooms)

    @hotels << hotel
  end

  private

  def create_hotel(name, rooms)
    Hotel.new(name, rooms)
  end
end
