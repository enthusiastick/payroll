require 'pry'

require_relative 'employee'
require_relative 'employee_loader'
require_relative 'owner'
require_relative 'sales_bonus'
require_relative 'sales_commission'
require_relative 'sales_data_loader'

company = EmployeeLoader.new("employees.csv")

this_month = SalesDataLoader.new("salesdata.csv")

company.employees.each do |person|
  if person.role == :owner || person.role == :sales_bonus || person.role == :sales_commission
    person.gross_sales(this_month.sales)
  end
end

# binding.pry

company.employees.each { |person| person.display }
