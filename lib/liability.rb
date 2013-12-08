class Liability

  def self.calculate(employee, amount_due, amount_owed)
    @employee = employee
    @amount_due = amount_due
    @amount_owed = amount_owed

  end




end



# Create a liability_spec.rb file that tests the Liability class. Liability must expose three properties: employee, amount_due and amount_owed. The employee attribute should be an instance of the Employee class. The amount_due represents taxes that must be paid by the employee. The amount_owed represents the refund.