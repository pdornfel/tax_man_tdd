require 'rspec'
require_relative 'employee'

describe Employee do

  let(:employee) { Employee.new("Paul", "Dornfeld") }

  it 'should have a first name' do
    expect(employee.first_name).to eql("Paul")
  end

  it 'should have a last name' do
    expect(employee.last_name).to eql('Dornfeld')
  end

end





# it 'fills in a guess' do
#   gameboard = Gameboard.new('car')
#   gameboard.guess('c')
#   expect(gameboard.status).to eql('c_ _')


# describe --- clear instance variables after class methods
#   after(:each) do
#     Car.clear_makes #####(@@makes = [])
#   end