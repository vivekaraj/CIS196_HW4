class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_comment.subject
  #
  def new_comment
    @greeting = "Hi"
    @commenter = user.name
    mail to: "vivekraj@wharton.upenn.edu"
  end
end
