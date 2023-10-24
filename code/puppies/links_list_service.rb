class Puppies
  class LinksListService
    def initialize(directory)
      @directory = directory
    end

    def call
      links_list
    end

    private

    def links_list
      links = []

      Dir.glob("#{@directory}/paws/*.html") do |paws_page|
        all_dogs_thumbnails(paws_page).each do |thumbnail|
          links << puppie_link(thumbnail) if female_baby?(thumbnail)
        end
      end

      links
    end

    def all_dogs_thumbnails(paws_page)
      html_parser(paws_page).css('a.img-thumbnail')
    end

    def html_parser(file_path)
      Nokogiri::HTML(File.open(file_path))
    end

    def puppie_link(thumbnail)
      thumbnail.attributes['href'].value
    end

    def female_baby?(thumbnail)
      thumbnail.text.include?("Female - Baby")
    end
  end
end
