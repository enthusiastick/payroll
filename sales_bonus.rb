require_relative 'employee'

class Sales_Bonus < Employee

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

end
