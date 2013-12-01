require 'spec_helper'

describe Movie do
  it "should have a title and a price code" do
    movie = Movie.new("Mars", Movie::NEW_RELEASE)
    expect(movie.price_code).to eq(Movie::NEW_RELEASE)
  end
end
