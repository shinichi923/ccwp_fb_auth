require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get friend_list" do
    get :friend_list
    assert_response :success
  end

end
