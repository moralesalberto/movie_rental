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




