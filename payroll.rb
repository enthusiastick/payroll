require 'pry'

require_relative 'employee'
require_relative 'employee_loader'
require_relative 'owner'
require_relative 'sales_bonus'
require_relative 'sales_commission'
require_relative 'sales_data_loader'






company = EmployeeLoader.new("employees.csv")

company.employees.each do |person|
  puts "#{person.firstname} #{person.lastname}, #{person.role}"
end

this_month = SalesDataLoader.new("salesdata.csv")

puts this_month.sales.keys

# binding.pry
