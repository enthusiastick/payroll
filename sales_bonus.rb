require_relative 'employee'

class Sales_Bonus < Employee

  attr_reader :monthly_quota, :bonus

  def initialize(lastname, firstname, base, monthly_quota, bonus, role = nil)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = :sales_bonus
    @monthly_quota = monthly_quota
    @bonus = bonus
  end

end
