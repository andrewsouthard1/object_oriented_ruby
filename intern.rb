module EmailReportable
  # in here I can just make new methods
  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def accidentally_reply_all
    puts "Hey Joe I think that was a bad idea"
  end
end

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
  include EmailReportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
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

class Intern < Employee
  include EmailReportable
end

intern1 = Intern.new(first_name: "Jimmy", last_name: "Smith", salary: 0, active: true)
intern1.send_report
manager1 = Manager.new(first_name: "John", last_name: "Dano", salary: 100000, active: true)
manager1.send_report
intern1.accidentally_reply_all
manager1.accidentally_reply_all

# 100.times do
#   Employee.new({:first_name => "John", :last_name => "Doe", 
#     :salary => 30000})
# end

# p employee1.active
# employee1.active = false
# p employee1.active