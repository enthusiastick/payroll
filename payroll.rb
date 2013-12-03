require 'pry'

class Employee

  attr_reader :lastname, :firstname, :base, :role

  def initialize(lastname, firstname, base, role)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = role
  end

end

class Owner < Employee

  attr_reader :company_quota

  def initialize(lastname, firstname, base, role = nil, company_quota = nil)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = "Owner"
    @company_quota = 250000.0
  end

end

class Sales_Bonus < Employee

  attr_reader :monthly_quota, :bonus

  def initialize(lastname, firstname, base, monthly_quota, bonus, role = nil)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = "Sales Bonus"
    @monthly_quota = monthly_quota
    @bonus = bonus
  end

end

class Sales_Commission < Employee

  attr_reader :percentage

  def initialize(lastname, firstname, base, percentage, role = nil)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = "Sales Commission"
    @percentage = percentage
  end

end


binding.pry
