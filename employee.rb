class Employee
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

end


# Create an employee_spec.rb file that tests an Employee class to represent each employee in your dataset. Your tests must verify that you can instantiate your class when all expected data is present as well as handle the cases where some are missing.