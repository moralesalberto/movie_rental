require 'spec_helper'

describe Rental do
  let(:movie) { Movie.new("Mars", Movie::NEW_RELEASE) }

  it "should belong to a movie" do
    rental = Rental.new(movie, 3)
    expect(rental.movie).to eq(movie)
  end


end
