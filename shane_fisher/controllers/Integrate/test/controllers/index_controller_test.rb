require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get submit" do
    get :submit
    assert_response :success
  end

  test "should get total" do
    get :total
    assert_response :success
  end

end
