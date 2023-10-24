# frozen_string_literal: true

require_relative 'hotel/room'
require_relative 'dynamic_access'

class Hotel
  include DynamicAccess

  attr_accessor :name, :rooms

  def initialize(_hotel, rooms_list)
    @name = name
    @rooms = load_rooms(rooms_list)
  end

  private

  def load_rooms(rooms_list)
    rooms_list.map { |room| Room.new(room['name'], room['amenities']) }
  end
end
