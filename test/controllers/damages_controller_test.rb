require 'test_helper'

class DamagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get damages_index_url
    assert_response :success
  end

end
