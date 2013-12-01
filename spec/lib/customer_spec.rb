require 'spec_helper'

describe Customer do
  subject(:customer) { Customer.new("juan")}

  it "starts with no rentals" do
    expect(customer.name).to eq("juan")
  end

  it "should have a statement for a rental" do                      
    rental = fabricate_rental
    customer.add_rental(rental) 
    puts customer.statement
    expect(customer.statement).to include("juan")
  end


  it "should have a statement for several rentals" do                      
    rentals = 4.times.map { fabricate_rental }
    rentals.each { |rental| customer.add_rental(rental) }
    puts customer.statement
    expect(customer.statement).to include("juan")
  end
end
