require 'spec_helper'

describe Customer do
  subject(:customer) { Customer.new("juan")}

  describe "a single customer statement" do

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
end
