require 'faker'

require_relative '../lib/customer.rb'
require_relative '../lib/movie.rb'
require_relative '../lib/rental.rb'

require 'pry'

def fabricate_movie
  Movie.new( Faker::Lorem.words(3).join(' '), [Movie::NEW_RELEASE, Movie::CHILDRENS, Movie::REGULAR].sample )
end

def fabricate_customer
  Customer.new( Faker::Name.name )
end

def fabricate_rental
  Rental.new(fabricate_movie, [1,2,3,4].sample)
end
