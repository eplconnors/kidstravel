require 'test_helper'

class TipsControllerTest < ActionController::TestCase
  test "should get infant" do
    get :infant
    assert_response :success
  end

  test "should get toddler" do
    get :toddler
    assert_response :success
  end

  test "should get kids" do
    get :kids
    assert_response :success
  end

  test "should get teens" do
    get :teens
    assert_response :success
  end

end
