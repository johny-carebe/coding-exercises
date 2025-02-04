# frozen_string_literal: true

require_relative 'room/amenity'
require_relative '../dynamic_access'

class Hotel
  class Room
    include DynamicAccess

    attr_accessor :name, :amenities

    def initialize(name, amenities_list)
      @name = name
      @amenities = load_amenities(amenities_list)
    end

    private

    def load_amenities(amenities_list)
      amenities_list.map { |amenity| Amenity.new(amenity).name }
    end
  end
end
