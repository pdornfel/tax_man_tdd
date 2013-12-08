require 'rspec'
require_relative '../lib/tax_calculator'
require_relative '../lib/employee'
require 'pry'




describe TaxCalculator do

  let(:employee) { Employee.new('Paul','Dornfeld',100, 10, 10) }

  it 'wil calculate a liability if someone owes taxes' do
    person = TaxCalculator.liability(employee)
    expect(person).to eql(0)
  end


end