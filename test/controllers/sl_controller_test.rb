require 'test_helper'

class SlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sl_index_url
    assert_response :success
  end

  test "should get show" do
    get sl_show_url
    assert_response :success
  end

end
