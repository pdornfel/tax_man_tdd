
class EmployeeReader

  def self.load(filename)
    puts "File does not exist" unless File.exists?(filename)
    employees = []
    CSV.foreach(filename, headers:true) do |row|
      employees << Employee.new(row["first_name"],row["last_name"],row["annual_income"],row["tax_paid"],row["tax_rate"])
    end
    employees
  end


end