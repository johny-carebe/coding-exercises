# Stayntouch Coding Exercises

As a candidate to our engineering team, we are offering the following exercises to allow you to showcase your development skills. The purpose of these
exercises are for you to express yourself technically, outside of the in-person interview. Take as much time as you would like, but it should only take
a few hours.

## Submission Instructions

1. Complete the exercises as described below.

- Commit each solution separately with a brief explanation of your
  solution. Do not squash your commits.
- Your code should be clear and well-documented.

2. When you are done, use `git bundle` to bundle up the repo, compress it (zip/tar) and send it back to `codingtest@stayntouch.com`. We sometimes receive corrupted bundles, so please verify your bundle.

## Environment

Ruby 2.5.x, Rspec, Bundler

# Exercises

_Note: Feel free to use Google to look up syntax, method definitions, etc. but
please don't just look up the answers._ Any files you add should be added to the lib directory and required within the relevant code exercise.

## Magic Square

A "magic square" is a square divided into smaller squares each containing a number, such that the numbers in each vertical, horizontal, and diagonal row add up to the same value.(https://en.wikipedia.org/wiki/Magic_square).

![Magic Square Example](/3x3magicsquare.png)

Implement a method that takes a 2D array, checks if it's a magic square and returns either `true` or `false` depending on the result.

Tests have been pre-written using rspec at `/spec/magic_square_spec.rb`. There is a MagicSquare class in `code/magic_square.rb` the solution should be implementation in the `validate` method.

## Hotel Parser

With the provided YAML file in `data/hotel.yaml`, implement the hotel parser in a way that parses the file and returns a collection of nested objects
representing the data. You may use the standard YAML parser, but do not use OpenStruct. Bonus points for good OOP representation.

The object should respond to the following requirements:

1. Using the `[]` operator:

```
data['hotels'].last['rooms'].first['amenities'].last => "Pool"
```

2. Using method calls:

```
data.hotels.last.rooms.first.amenities.last => "Pool"
```

Tests have been pre-written using rspec in `/spec/hotel_parser_spec.rb`. There is a parse method in the HotelParser class located in
`code/hotel_parser.rb`.

## HTML Scraper

This exercise is to build a HTML screen scraper. The scraper will read provided paws.html file, navigate pagination, and collect href source for all
baby female dogs on each page.

You will likely want to use an HTML parser like Nokogiri and use the listing pagination to iterate each page.

One Test has been written using rspec in `/spec/puppies_spec.rb`. There is a parse method in the Puppies class located in
`code/puppies.rb`. The paws.html file is provided in the data directory.
