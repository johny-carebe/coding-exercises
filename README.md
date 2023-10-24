# Environment

Ruby 2.5.x, Rspec, Bundler

# Exercises

## Magic Square

A "magic square" is a square divided into smaller squares each containing a number, such that the numbers in each vertical, horizontal, and diagonal row add up to the same value.(https://en.wikipedia.org/wiki/Magic_square).

![Magic Square Example](/3x3magicsquare.png)

`MagicSquare.validate(input)` takes a 2D array, checks if it's a magic square and returns either `true` or `false` depending on the result.

## Hotel Parser

With the provided YAML file in `data/hotel.yaml`, `HotelParser.parse(filename)` parses the file and returns a collection of nested objects
representing the data.

The object responds to the following requirements:

1. Using the `[]` operator:

```
data['hotels'].last['rooms'].first['amenities'].last => "Pool"
```

2. Using method calls:

```
data.hotels.last.rooms.first.amenities.last => "Pool"
```

## HTML Scraper

This HTML screen scraper will read provided paws.html file, navigate pagination and collect href source for all
baby female dogs on each page by calling `Puppies.parse`.
