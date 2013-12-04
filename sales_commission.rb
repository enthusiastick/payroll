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

  def gross_pay
    @rough_gross = (((@base * 1000.0)/12.0) + self.commission).to_f.round(2)
    @gross_pay = "%.2f" % @rough_gross
  end

end
