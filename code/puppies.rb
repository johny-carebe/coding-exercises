#!/usr/bin/env ruby

# Build a scraper for a dog adoption website. This scraper should open the paws.html page and collect all baby female dogs on each page. The scraper
# should return the href sources for each matching dog. The DIRECTORY constant contains directory containing paws.html.
#
# Hint: You will likely want to use an HTML parser like Nokogiri and use the page's pagination to iterate each page.
#

require 'nokogiri'

class Puppies
  DIRECTORY = ::File.join(::File.dirname(__FILE__), '../data')

  def self.parse
    links = []

    Dir.glob("#{DIRECTORY}/paws/*.html") do |file_path|
      raw_document = Nokogiri::HTML(File.open(file_path))

      all_dogs_thumbnails = raw_document.css('a.img-thumbnail')

      all_dogs_thumbnails.each do |thumbnail|
        female_baby = thumbnail.text.include?("Female - Baby")
        puppie_link = thumbnail.attributes['href'].value

        links << puppie_link if female_baby
      end
    end

    links
  end
end
