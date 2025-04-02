require "test_helper"

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get Questions" do
    get form_Questions_url
    assert_response :success
  end

  test "should get Responses" do
    get form_Responses_url
    assert_response :success
  end
end
