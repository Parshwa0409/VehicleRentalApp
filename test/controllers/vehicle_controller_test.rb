require "test_helper"

class VehicleControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get vehicle_search_url
    assert_response :success
  end
end
