require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get submit" do
    get :submit
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
