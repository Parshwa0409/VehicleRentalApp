require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get all_vehicles" do
    get admin_all_vehicles_url
    assert_response :success
  end

  test "should get new_vehicle" do
    get admin_new_vehicle_url
    assert_response :success
  end

  test "should get all_users" do
    get admin_all_users_url
    assert_response :success
  end

  test "should get search_users" do
    get admin_search_users_url
    assert_response :success
  end

  test "should get rental_insights" do
    get admin_rental_insights_url
    assert_response :success
  end
end
