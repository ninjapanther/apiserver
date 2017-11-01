require 'test_helper'

class SlsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sls_index_url
    assert_response :success
  end

  test "should get show" do
    get sls_show_url
    assert_response :success
  end

end
