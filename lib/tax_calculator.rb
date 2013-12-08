class TaxCalculator

  def self.liability(employee)
    @employee = employee
      if amount_owed > 0
        "owes #{amount_owed}"
      else
        "will get a refund of #{amount_owed}"
      end
  end

  def self.amount_owed
    ((@employee.annual_income.to_i * (@employee.tax_rate)).to_i) - (@employee.tax_paid.to_i)
  end


end





# Create a tax_calculator_spec.rb file that tests a TaxCalculator class who's purpose is to determine taxes owed or refunds due. TaxCalculator must implement a liability class method that receives an instance of an Employee class in order to calculate taxes owed or refund due. The method must return an instance of the Liability class.




