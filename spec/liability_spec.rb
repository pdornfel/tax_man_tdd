require 'rspec'
require_relative '../lib/liability'
require_relative '../lib/employee'

describe Liability do

  let(:employee) { Employee.new('Paul','Dornfeld',100000, 20000, 30) }

  it 'wil calculate a liability if someone owes taxes' do
    person = TaxCalculator.liability(employee).to eql(0)
  end





end