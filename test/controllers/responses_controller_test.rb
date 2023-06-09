require "test_helper"

class ResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @response = responses(:one)
  end

  test "should get index" do
    get responses_url, as: :json
    assert_response :success
  end

  test "should create response" do
    assert_difference("Response.count") do
      post responses_url, params: { response: { assessment_id: @response.assessment_id, kata_id: @response.kata_id, score: @response.score, user_id: @response.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show response" do
    get response_url(@response), as: :json
    assert_response :success
  end

  test "should update response" do
    patch response_url(@response), params: { response: { assessment_id: @response.assessment_id, kata_id: @response.kata_id, score: @response.score, user_id: @response.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy response" do
    assert_difference("Response.count", -1) do
      delete response_url(@response), as: :json
    end

    assert_response :no_content
  end
end
