require 'test_helper'

class SaysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
