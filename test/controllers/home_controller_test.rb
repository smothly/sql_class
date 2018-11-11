require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get buy_form" do
    get :buy_form
    assert_response :success
  end

  test "should get buy" do
    get :buy
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
