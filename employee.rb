class Employee

  attr_reader :lastname, :firstname, :base, :role

  def initialize(lastname, firstname, base, role)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = role
  end

  def gross_pay
    @rough_gross = (@base * 1000).round(2)
    @gross_pay = "%.2f" % @rough_gross
  end

  def net_pay
    rough_net = (@rough_gross * 0.7).round(2)
    @net_pay = "%.2f" % rough_net
  end

end
