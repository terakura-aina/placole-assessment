require "test_helper"

class PricesControllerTest < ActionDispatch::IntegrationTest
  test "should get simluator" do
    get prices_simluator_url
    assert_response :success
  end

  test "should get result" do
    get prices_result_url
    assert_response :success
  end
end
