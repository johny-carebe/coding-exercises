require_relative 'hotel/room'

class Hotel
  attr_accessor :name, :rooms

    def initialize(hotel, rooms_list)
      @name = name
      @rooms = load_rooms(rooms_list)
    end

    private

    def load_rooms(rooms_list)
      rooms_list.map { |room| Room.new(room["name"], room["amenities"]) }
    end
end
