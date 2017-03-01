class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def give_annual_raise
    @salary *= 1.05
  end

  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year and her status #{active}"
  end

  def full_name
    if last_name[last_name.length - 1] == "s"
      "#{first_name} #{last_name}, esq"
    else
      "#{first_name} #{last_name}"
    end
  end
end

class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
  
  def give_all_raises
    employees.each do |employee|
      employee.give_annual_raise  
    end
  end

  def fire_all_employees
    employees.each do |employee|
      employee.active = false
    end
  end
end

employee1 = Employee.new({:first_name => "Manila", :last_name => "Campos", :salary => 80000, :active => true})
# employee2 = Employee.new("Danilo", "Carter", 70000, false)
employee1.print_info
employee2 = Employee.new(first_name: "Danilo", last_name: "Carter", salary: 70000, active: false)
manager1 = Manager.new(first_name: "Sophie", last_name: "Orioli", salary: 100000, active: false, employees: [employee1, employee2])
p manager1.full_name
manager1.give_all_raises
employee1.print_info
manager1.fire_all_employees
employee1.print_info


# 100.times do
#   Employee.new({:first_name => "John", :last_name => "Doe", 
#     :salary => 30000})
# end

# p employee1.active
# employee1.active = false
# p employee1.active