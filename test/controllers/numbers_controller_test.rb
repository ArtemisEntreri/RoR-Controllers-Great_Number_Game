require 'test_helper'

class NumbersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get guess" do
    get :guess
    assert_response :success
  end

end
