class Employee

  attr_reader :lastname, :firstname, :base, :role

  def initialize(lastname, firstname, base, role)
    @lastname = lastname
    @firstname = firstname
    @base = base
    @role = role
  end

end
