require "test_helper"

class McqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mcq = mcqs(:one)
  end

  test "should get index" do
    get mcqs_url, as: :json
    assert_response :success
  end

  test "should create mcq" do
    assert_difference("Mcq.count") do
      post mcqs_url, params: { mcq: { assessment_id: @mcq.assessment_id, question_text: @mcq.question_text } }, as: :json
    end

    assert_response :created
  end

  test "should show mcq" do
    get mcq_url(@mcq), as: :json
    assert_response :success
  end

  test "should update mcq" do
    patch mcq_url(@mcq), params: { mcq: { assessment_id: @mcq.assessment_id, question_text: @mcq.question_text } }, as: :json
    assert_response :success
  end

  test "should destroy mcq" do
    assert_difference("Mcq.count", -1) do
      delete mcq_url(@mcq), as: :json
    end

    assert_response :no_content
  end
end
