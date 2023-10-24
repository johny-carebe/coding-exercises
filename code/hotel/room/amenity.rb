# frozen_string_literal: true

class Hotel
  class Room
    class Amenity
      attr_accessor :name

      def initialize(name)
        @name = name
      end
    end
  end
end
