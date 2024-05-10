require "test_helper"

class SixDigitInputsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get six_digit_inputs_new_url
    assert_response :success
  end

  test "should get create" do
    get six_digit_inputs_create_url
    assert_response :success
  end
end
