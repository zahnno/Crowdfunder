require 'test_helper'

class RewardControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

end
