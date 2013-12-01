require 'spec_helper'

describe Customer do
  let (:customer) { Customer.new("juan")}

  describe "a customer statement with one rental" do

    let(:movie) { Movie.new("Mars - The Sequel", Movie::REGULAR) }
    let(:rental) { Rental.new(movie, 3) }

    before do
      customer.add_rental(rental)
    end

    subject { customer.statement }

    it { should match /Rental Record for juan/ }

    it { should match /Mars - The Sequel/ }

    it { should match /Mars - The Sequel\t3.5/ }

    it { should match /Amount owed is 3.5/ }

    it { should match /You earned 1 frequent renter points/ }

  end

  describe "a customer statement with several rentals" do

    let(:movies) { [Movie.new("Transformers", Movie::REGULAR), Movie.new("Hunger Games", Movie::NEW_RELEASE), Movie.new("Cinderella", Movie::CHILDRENS)] }
    let(:rentals) { movies.map { |movie| Rental.new(movie, 3) } }
    let(:customer) { Customer.new("John") }

    before do
      rentals.each { |rental| customer.add_rental(rental) }
    end

    subject { customer.statement }

    it { should match /Transformers\t3.5/ }
    it { should match /Hunger Games\t9/ }
    it { should match /Cinderella\t1.5/ }
    it { should match /Amount owed is 14.0/ }
    it { should match /You earned 4 frequent renter points/ }

  end

end
