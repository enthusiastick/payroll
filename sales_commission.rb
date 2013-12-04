require_relative 'employee'

class Sales_Commission < Employee

  attr_reader :percentage

  def initialize(lastname, firstname, base, percentage, role = nil)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = :sales_commission
    @percentage = percentage
  end

end
