require 'pry'

require_relative 'employee'
require_relative 'employee_loader'
require_relative 'owner'
require_relative 'sales_bonus'
require_relative 'sales_commission'






x = EmployeeLoader.new("employees.csv")

x.employees.each do |person|
  puts "#{person.firstname} #{person.lastname}, #{person.role}"
end

# binding.pry
