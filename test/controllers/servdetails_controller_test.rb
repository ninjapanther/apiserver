require 'test_helper'

class ServdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servdetail = servdetails(:one)
  end

  test "should get index" do
    get servdetails_url, as: :json
    assert_response :success
  end

  test "should create servdetail" do
    assert_difference('Servdetail.count') do
      post servdetails_url, params: { servdetail: { cpu: @servdetail.cpu, name: @servdetail.name } }, as: :json
    end

    assert_response 201
  end

  test "should show servdetail" do
    get servdetail_url(@servdetail), as: :json
    assert_response :success
  end

  test "should update servdetail" do
    patch servdetail_url(@servdetail), params: { servdetail: { cpu: @servdetail.cpu, name: @servdetail.name } }, as: :json
    assert_response 200
  end

  test "should destroy servdetail" do
    assert_difference('Servdetail.count', -1) do
      delete servdetail_url(@servdetail), as: :json
    end

    assert_response 204
  end
end
