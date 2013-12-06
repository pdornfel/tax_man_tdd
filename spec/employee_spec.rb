require 'rspec'
require_relative '../lib/employee'

describe Employee do

  # let(:employee) { (data)) }

  let(:employee) { Employee.new('Paul','Dornfeld',50000, 2000, 35) }

  it 'an employee must have a first name' do
    expect(employee.first_name).to eql("Paul")
  end

  it 'an employee must have a last name' do
    expect(employee.last_name).to eql('Dornfeld')
  end

  it 'should have an annual income' do
    expect(employee.annual_income).to eql 50000
  end

  it 'should have a tax paid' do
    expect(employee.tax_paid).to eql 2000
  end

  it 'should allow an employee to not have any taxes paid' do
    expect(Employee.new('Paul','Dornfeld',50000,nil, 35).tax_paid).to eql 0
  end

  it 'should have a tax rate' do
    expect(employee.tax_rate).to eql 35
  end


end


# first_name,last_name,annual_income,tax_paid,tax_rate
# Johnny,Smith,120000,28000,38
# Jane,Doe,140000,30000,40
# Liz,Lemon,,21000,30
# ,Orsillio,40000,8800,18
# Eric,Schmidt,54000,,28


# it 'fills in a guess' do
#   gameboard = Gameboard.new('car')
#   gameboard.guess('c')
#   expect(gameboard.status).to eql('c_ _')


# describe --- clear instance variables after class methods
#   after(:each) do
#     Car.clear_makes #####(@@makes = [])
#   end