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

end
