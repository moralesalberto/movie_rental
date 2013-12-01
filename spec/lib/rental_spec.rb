require 'spec_helper'

describe Rental do
  let(:movie) { fabricate_movie }

  it "should belong to a movie" do
    rental = Rental.new(movie, 3)
    expect(rental.movie).to eq(movie)
  end


end
