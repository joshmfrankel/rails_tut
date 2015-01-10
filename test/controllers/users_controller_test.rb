require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  def setup
    @user = User.new(name: 'Mike Smith', email: 'test@test.com',
                     password: 'foobar', password_confirmation: 'foobar')
  end

  test "should get NEW" do
    get :new
    assert_response :success
    assert_select 'title', full_title('Sign up')
  end

  # test 'should get SHOW' do
  #   @user.save
  #   get :show, :id => @user.id
  #   assert_response :success
  #   assert_select 'title', full_title("#{@user.name}'s Profile")
  # end

end
