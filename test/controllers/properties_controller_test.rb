require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get properties_name:string_url
    assert_response :success
  end
end
