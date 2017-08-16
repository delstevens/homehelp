require 'test_helper'

class UserMailerTest < ActionMailer::TestCase



  test "account_activation" do
    user = users(:michael)
    user.activation_digest = User.new_token
    mail = UserMailer.account_activation(user)

  end


  test "password_reset" do
    mail = UserMailer.password_reset
    assert_equal "Password reset", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["admin@liberty.co.nz"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
