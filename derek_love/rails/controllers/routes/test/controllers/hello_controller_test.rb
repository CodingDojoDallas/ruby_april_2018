require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get say" do
    get :say
    assert_response :success
  end

  test "should get joe" do
    get :joe
    assert_response :success
  end

  test "should get michael" do
    get :michael
    assert_response :success
  end

  test "should get redirect" do
    get :redirect
    assert_response :success
  end

  test "should get times" do
    get :times
    assert_response :success
  end

  test "should get restart" do
    get :restart
    assert_response :success
  end

end
