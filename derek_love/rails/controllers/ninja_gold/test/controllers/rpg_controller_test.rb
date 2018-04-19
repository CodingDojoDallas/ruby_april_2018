require 'test_helper'

class RpgControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get farm" do
    get :farm
    assert_response :success
  end

  test "should get cave" do
    get :cave
    assert_response :success
  end

  test "should get house" do
    get :house
    assert_response :success
  end

  test "should get casino" do
    get :casino
    assert_response :success
  end

  test "should get reset" do
    get :reset
    assert_response :success
  end

end
