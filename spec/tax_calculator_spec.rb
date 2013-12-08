require 'rspec'
require_relative '../lib/tax_calculator'
require_relative '../lib/employee'
require 'pry'




describe TaxCalculator do

  let(:employee) { Employee.new('Paul','Dornfeld',100000, 30000, 30) }

  it 'should calculate an amount due' do
    paul = TaxCalculator.new(employee)
    expect(paul.amount_due).to eql(30000)
  end

  it 'should calculate a amount owed' do
    paul = TaxCalculator.new(employee)
    expect(paul.amount_owed).to eql(0)
  end


end