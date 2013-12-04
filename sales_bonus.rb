require_relative 'employee'

class SalesBonus < Employee

  attr_reader :monthly_quota, :bonus, :gross

  def initialize(lastname, firstname, base, monthly_quota, bonus, role = nil)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = :sales_bonus
    @monthly_quota = monthly_quota
    @bonus = bonus
  end

  def gross_sales(saleshash)
    if saleshash.has_key?(@lastname)
      @gross = saleshash[@lastname].inject(:+)
    else
      @gross = 0
    end
    @gross
  end

  def quota?
    @gross >= @monthly_quota
  end

  def gross_pay
    if self.quota?
      @rough_gross = (((@base * 1000.0)/12.0) + @bonus).to_f.round(2)
    else
      @rough_gross = ((@base * 1000.0)/12.0).to_f.round(2)
    end
    @gross_pay = "%.2f" % @rough_gross
  end

  def display
    puts "--- #{firstname} #{lastname} ---"
    puts "Gross Salary: $#{gross_pay}"
    puts "Bonus: $#{bonus}" if self.quota?
    puts "Net Pay: $#{net_pay}"
    puts "---"
    puts ""
  end

end
