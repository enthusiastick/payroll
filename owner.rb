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
      @rough_gross = ((@base * 1000) + 1000).round(2)
    else
      @rough_gross = (@base * 1000).round(2)
    end
    @gross_pay = "%.2f" % @rough_gross
  end

  def net_pay
    rough_net = (@rough_gross * 0.7).round(2)
    @net_pay = "%.2f" % rough_net
  end

end
