require_relative 'lib/customer'
require_relative 'lib/movie'
require_relative 'lib/rental'



movies = [Movie.new("Transformers", Movie::REGULAR),
          Movie.new("Hunger Games", Movie::NEW_RELEASE),
          Movie.new("Cinderella", Movie::CHILDRENS)
         ]

rentals = movies.map { |movie| Rental.new(movie, 3) }

customer = Customer.new("John")
rentals.each { |rental| customer.add_rental(rental) }


puts customer.statement

