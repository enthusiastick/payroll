require_relative 'employee'
require_relative 'owner'
require_relative 'sales_bonus'
require_relative 'sales_commission'

class EmployeeLoader

  require 'csv'

  attr_reader :employees

  def initialize(filename)
    @employees = []
    if File.file?(filename)
      CSV.foreach(filename) do |row|
        if row[3] == "Owner"
          @employees << Owner.new(row[0], row[1], row[2].to_i)
        elsif row[3] == "Sales Bonus"
          @employees << Sales_Bonus.new(row[0], row[1], row[2].to_i, row[4].to_i, row[5].to_i)
        elsif row[3] == "Sales Commission"
          puts "baz"
          @employees << Sales_Commission.new(row[0], row[1], row[2].to_i, row[4].to_f)
        else
          @employees << Employee.new(row[0], row[1], row[2].to_i, row[3].downcase.to_sym)
        end

      end

    end

  end

end
