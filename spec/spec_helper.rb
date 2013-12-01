require 'faker'
require 'pry'
require 'fivemat'

require_relative '../lib/customer.rb'
require_relative '../lib/movie.rb'
require_relative '../lib/rental.rb'


RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = 'Fivemat'
end



def fabricate_movie
  Movie.new( Faker::Lorem.words(3).join(' '), [Movie::NEW_RELEASE, Movie::CHILDRENS, Movie::REGULAR].sample )
end

def fabricate_customer
  Customer.new( Faker::Name.name )
end

def fabricate_rental
  Rental.new(fabricate_movie, [1,2,3,4].sample)
end
