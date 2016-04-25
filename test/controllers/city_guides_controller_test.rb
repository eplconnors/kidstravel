require 'test_helper'

class CityGuidesControllerTest < ActionController::TestCase
  setup do
    @city_guide = city_guides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:city_guides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create city_guide" do
    assert_difference('CityGuide.count') do
      post :create, city_guide: { city: @city_guide.city, country: @city_guide.country, post: @city_guide.post, restaurants: @city_guide.restaurants, see: @city_guide.see, skip: @city_guide.skip, state: @city_guide.state, stay: @city_guide.stay, tips: @city_guide.tips }
    end

    assert_redirected_to city_guide_path(assigns(:city_guide))
  end

  test "should show city_guide" do
    get :show, id: @city_guide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @city_guide
    assert_response :success
  end

  test "should update city_guide" do
    patch :update, id: @city_guide, city_guide: { city: @city_guide.city, country: @city_guide.country, post: @city_guide.post, restaurants: @city_guide.restaurants, see: @city_guide.see, skip: @city_guide.skip, state: @city_guide.state, stay: @city_guide.stay, tips: @city_guide.tips }
    assert_redirected_to city_guide_path(assigns(:city_guide))
  end

  test "should destroy city_guide" do
    assert_difference('CityGuide.count', -1) do
      delete :destroy, id: @city_guide
    end

    assert_redirected_to city_guides_path
  end
end
