class TaxCalculator

  def initialize(employee)
    @employee = employee
  end

  def self.liability(employee)
    @employee = employee
    Liability.new(employee, amount_due, amount_owed)
  end

  def amount_due
    (@employee.annual_income.to_i * (1- @employee.tax_rate)).to_i
  end

  def amount_owed
    (@employee.tax_paid.to_i - amount_due).to_i
  end


end





# Create a tax_calculator_spec.rb file that tests a TaxCalculator class who's purpose is to determine taxes owed or refunds due. TaxCalculator must implement a liability class method that receives an instance of an Employee class in order to calculate taxes owed or refund due. The method must return an instance of the Liability class.