class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_employee.subject
  #
  def jobseeker(employee)
    @greeting = "Hi! You are officially a new employee!"
    @commenter = employee.name
    mail to: employee.email
  end
end
