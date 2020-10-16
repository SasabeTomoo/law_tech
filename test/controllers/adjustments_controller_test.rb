require 'test_helper'

class AdjustmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adjustments_index_url
    assert_response :success
  end

end
