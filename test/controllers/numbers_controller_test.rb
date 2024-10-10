require "test_helper"

class NumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get phone" do
    get numbers_phone_url
    assert_response :success
  end
end
