require 'test_helper'

class AirportsControllerTest < ActionController::TestCase
  setup do
    @airport = airports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airport" do
    assert_difference('Airport.count') do
      post :create, airport: { air_city: @airport.air_city, air_code: @airport.air_code, air_country: @airport.air_country, air_eat: @airport.air_eat, air_post: @airport.air_post, air_tips: @airport.air_tips }
    end

    assert_redirected_to airport_path(assigns(:airport))
  end

  test "should show airport" do
    get :show, id: @airport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airport
    assert_response :success
  end

  test "should update airport" do
    patch :update, id: @airport, airport: { air_city: @airport.air_city, air_code: @airport.air_code, air_country: @airport.air_country, air_eat: @airport.air_eat, air_post: @airport.air_post, air_tips: @airport.air_tips }
    assert_redirected_to airport_path(assigns(:airport))
  end

  test "should destroy airport" do
    assert_difference('Airport.count', -1) do
      delete :destroy, id: @airport
    end

    assert_redirected_to airports_path
  end
end
