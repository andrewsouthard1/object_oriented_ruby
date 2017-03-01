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
