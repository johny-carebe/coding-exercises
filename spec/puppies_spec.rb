require File.expand_path('code/puppies')

describe Puppies do
  describe '.parse' do
    subject { Puppies.parse }

    # it { is_expected.to eq %w[paws/dogs/8311 paws/dogs/8318 paws/dogs/8316 paws/dogs/8317 paws/dogs/8322 paws/dogs/8337 paws/dogs/8339
    #                           paws/dogs/8341] }

    it 'contains the first link' do
      # all_dog_links.first.attributes['href'].value
      is_expected.to include "paws/dogs/121"
    end

    it 'contains a lot of links' do
      # all_dog_links.each { |link| links << link.attributes['href'].value }
      is_expected.to include *%w[paws/dogs/8311 paws/dogs/8318 paws/dogs/8316 paws/dogs/8317 paws/dogs/8322]
    end
  end
end
