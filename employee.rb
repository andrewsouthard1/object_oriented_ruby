module EmployeeLedger
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
end