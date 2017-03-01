require './employee.rb'
require './email_reportable.rb'

class Intern < Employee
  include EmailReportable
end

intern1 = Intern.new(first_name: "Jimmy", last_name: "Smith", salary: 0, active: true)
intern1.send_report
intern1.accidentally_reply_all

# 100.times do
#   Employee.new({:first_name => "John", :last_name => "Doe", 
#     :salary => 30000})
# end

# p employee1.active
# employee1.active = false
# p employee1.active