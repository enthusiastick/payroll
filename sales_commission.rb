require_relative 'employee'

class SalesCommission < Employee

  attr_reader :percentage

  def initialize(lastname, firstname, base, percentage, role = nil)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = :sales_commission
    @percentage = percentage
  end


  def gross_sales(saleshash)
    if saleshash.has_key?(@lastname)
      @gross = saleshash[@lastname].inject(:+)
    else
      @gross = 0
    end
    @gross
  end

  def commission
    @rough_com = (@gross * @percentage).to_f
    @commission = "%.2f" % @rough_com
    @commission
  end

  def gross_pay
    @rough_gross = (((@base * 1000.0)/12.0) + @rough_com).to_f.round(2)
    @gross_pay = "%.2f" % @rough_gross
  end

  def display
    self.commission
    puts "--- #{firstname} #{lastname} ---"
    puts "Gross Salary: $#{gross_pay}"
    puts "Commission: $#{commission}"
    puts "Net Pay: $#{net_pay}"
    puts "---"
    puts ""
  end

end
