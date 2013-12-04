require_relative 'employee'
require_relative 'owner'
require_relative 'sales_bonus'
require_relative 'sales_commission'

class SalesDataLoader

  attr_reader :sales

  def initialize(filename)
    @sales = Hash.new
    if File.file?(filename)
        CSV.foreach(filename) do |row|
          if @sales.has_key?(row[0])
            @sales[row[0]] << row[1].to_i
          else
            @sales[row[0]] = [row[1].to_i]
          end

        end

    end

  end

end
