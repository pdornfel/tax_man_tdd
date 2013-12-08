require 'rspec'
require_relative '../lib/liability'
require_relative '../lib/employee'

describe Liability do

  let(:employee) { Employee.new('Paul','Dornfeld',100000, 20000, 30) }

  it 'wil calculate a liability if someone owes taxes' do
    liability = Liability.new(employee, 1000, 3000)
    expect(liability.calculate).to eql(2000)
  end





end