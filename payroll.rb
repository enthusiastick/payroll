require 'pry'

require_relative 'employee'
require_relative 'employee_loader'
require_relative 'owner'
require_relative 'sales_bonus'
require_relative 'sales_commission'






x = EmployeeLoader.new("employees.csv")

puts x.employees

binding.pry
