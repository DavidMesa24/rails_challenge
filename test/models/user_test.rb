require "test_helper"

class UserTest < ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers
  # test "the truth" do
  #   assert true
  # end

  test "should not save user without email" do
    user = User.new
    assert_not user.save
  end

  test "should not save user without password" do
    user = User.new
    assert_not user.save
  end

  test "User should sign up" do
    user = User.new(email: "userone@user.com", password: "12346678")
    sign_in(user)
  end

end
