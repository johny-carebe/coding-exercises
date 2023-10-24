# frozen_string_literal: true

require 'yaml'
require_relative 'hotel_chain'

class HotelParser
  # Implement a method to parse the contents of a YAML file and return
  # an object whose values are accessible using the [] operator or method calls
  #
  # Note: Use of the YAML library is fine (encouraged, even) but please don't
  #       use any third-party gems that enable the required functionality.
  def self.parse(filename)
    raw_data = YAML.load_file(filename)
    hotel_chain = HotelChain.new

    raw_data['hotels'].each { |hotel| hotel_chain.add_hotel(hotel['name'], hotel['rooms']) }

    hotel_chain
  end
end
