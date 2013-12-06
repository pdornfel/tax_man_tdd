require 'pry'
require 'csv'

class Employee

  attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate

  def initialize(first_name, last_name, annual_income, tax_paid, tax_rate)
    @first_name = first_name || "[first name]"
    @last_name = last_name || "[last name]"
    @annual_income = annual_income || 0
    @tax_paid = tax_paid || 0
    @tax_rate = tax_rate || 0
  end

end


# unless data.is_a?(CSV::Row)
# raise ArgumentError, "should be a CSV row"
# binding.pry


# Create an employee_spec.rb file that tests an Employee class to represent each employee in your dataset. Your tests must verify that you can instantiate your class when all expected data is present as well as handle the cases where some are missing.