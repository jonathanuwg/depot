require "test_helper"

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received
    assert_equal "Received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal "Sam Ruby <depot@example.com", mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped
    assert_equal "Shipped", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal "Sam Ruby <depot@example.com", mail.from
    assert_match "Hi", mail.body.encoded
  end

end
