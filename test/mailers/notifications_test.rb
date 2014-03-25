require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "new_employee" do
    mail = Notifications.new_employee
    assert_equal "New employee", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
