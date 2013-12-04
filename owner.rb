require_relative 'employee'

class Owner < Employee

  attr_reader :company_quota

  def initialize(lastname, firstname, base, role = nil, company_quota = nil)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = :owner
    @company_quota = 250000.0
  end

  def gross_sales(saleshash)
    @gross = saleshash.values.flatten.inject(:+)
  end

  def bonus?
    @gross >= @company_quota
  end

  def gross_pay
    if self.bonus?
      @rough_gross = (((@base * 1000.0)/12.0) + 1000).to_f.round(2)
    else
      @rough_gross = ((@base * 1000.0)/12.0).to_f.round(2)
    end
    @gross_pay = "%.2f" % @rough_gross
  end

  def display
    puts "--- #{firstname} #{lastname} ---"
    puts "Gross Salary: $#{gross_pay}"
    puts "Bonus: $1000" if self.bonus?
    puts "Net Pay: $#{net_pay}"
    puts "---"
    puts ""
  end

end
