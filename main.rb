require './employee.rb'
require './intern.rb'

intern1 = Intern.new(first_name: "Jimmy", last_name: "Smith", salary: 0, active: true)
intern1.send_report
intern1.accidentally_reply_all

