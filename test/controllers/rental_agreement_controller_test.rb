require "test_helper"

class RentalAgreementControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rental_agreement_new_url
    assert_response :success
  end
end
