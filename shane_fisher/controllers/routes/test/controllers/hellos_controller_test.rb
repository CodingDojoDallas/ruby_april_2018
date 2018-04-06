require 'test_helper'

class HellosControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get say" do
    get :say
    assert_response :success
  end

  test "should get say_name" do
    get :say_name
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
