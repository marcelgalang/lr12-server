require 'test_helper'

class RightBsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @right_b = right_bs(:one)
  end

  test "should get index" do
    get right_bs_url, as: :json
    assert_response :success
  end

  test "should create right_b" do
    assert_difference('RightB.count') do
      post right_bs_url, params: { right_b: { duration: @right_b.duration, endTime: @right_b.endTime, startTime: @right_b.startTime, user_id: @right_b.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show right_b" do
    get right_b_url(@right_b), as: :json
    assert_response :success
  end

  test "should update right_b" do
    patch right_b_url(@right_b), params: { right_b: { duration: @right_b.duration, endTime: @right_b.endTime, startTime: @right_b.startTime, user_id: @right_b.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy right_b" do
    assert_difference('RightB.count', -1) do
      delete right_b_url(@right_b), as: :json
    end

    assert_response 204
  end
end
