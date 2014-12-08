require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name:  "",
                               email: "user@invalid",
                               password:              "foo",
                               password_confirmation: "bar" }
    end
    assert_template 'users/new'
  end

  # test 'valid signup information' do
  #   user_id = User.last.id
  #   get signup_path
  #   post users_path, user: { name: 'Valid',
  #                             email: 'valid@valid.com',
  #                             password: 'Validpass',
  #                             password_confirmation: 'Validpass' }
  #   assert_template "users/#{user_id}"
  # end
end