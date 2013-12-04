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


  def gross_sales(saleshash)
    if saleshash.has_key?(@lastname)
      @gross = saleshash[@lastname].inject(:+)
    else
      @gross = 0
    end
    @gross
  end

  def commission
    @gross * @percentage
  end

end
