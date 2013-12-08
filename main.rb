require_relative 'lib/employee'
require_relative 'lib/liability'
require_relative 'lib/employee_reader'
require_relative 'lib/tax_calculator'

require 'pry'


# ** Sample Output **

# Johnny Smith has a tax liability of $17,600
# Jane Doe has a tax liability of $10,200
# Liz Lemon will receive a refund of $21,000
# [First Name] Orsillio will receive a refund of $100
# Eric Schmidt has a tax liability of $1,512

# Note that your program's main file should handle the displaying of information as seen in the Sample Output above. Your classes and their instances should not output to the console.

employees = EmployeeReader.load('tax_data.csv')


employees.each do |employee|
  taxes = TaxCalculator.liability(employee)
  puts "#{employee.first_name} #{employee.last_name} #{taxes}"
end





