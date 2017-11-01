require 'test_helper'

class SdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sd = sds(:one)
  end

  test "should get index" do
    get sds_url, as: :json
    assert_response :success
  end

  test "should create sd" do
    assert_difference('Sd.count') do
      post sds_url, params: { sd: { cpu: @sd.cpu, disk: @sd.disk, name: @sd.name, process: @sd.process } }, as: :json
    end

    assert_response 201
  end

  test "should show sd" do
    get sd_url(@sd), as: :json
    assert_response :success
  end

  test "should update sd" do
    patch sd_url(@sd), params: { sd: { cpu: @sd.cpu, disk: @sd.disk, name: @sd.name, process: @sd.process } }, as: :json
    assert_response 200
  end

  test "should destroy sd" do
    assert_difference('Sd.count', -1) do
      delete sd_url(@sd), as: :json
    end

    assert_response 204
  end
end
