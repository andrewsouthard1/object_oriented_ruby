require './employee.rb'
require './email_reportable.rb'

class Intern < Employee
  include EmailReportable
end

# 100.times do
#   Employee.new({:first_name => "John", :last_name => "Doe", 
#     :salary => 30000})
# end

# p employee1.active
# employee1.active = false
# p employee1.active