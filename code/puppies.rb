#!/usr/bin/env ruby
# frozen_string_literal: true

# Build a scraper for a dog adoption website. This scraper should open the paws.html page and
# collect all baby female dogs on each page. The scraper
# should return the href sources for each matching dog. The DIRECTORY constant contains directory
# containing paws.html.
#
# Hint: You will likely want to use an HTML parser like Nokogiri and use the page's pagination to
# iterate each page.
#

require 'nokogiri'
require_relative 'puppies/links_list_service'

class Puppies
  DIRECTORY = ::File.join(::File.dirname(__FILE__), '../data')

  class << self
    def parse
      LinksListService.new(DIRECTORY).call
    end
  end
end
