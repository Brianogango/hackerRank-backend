require "test_helper"

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feedback = feedbacks(:one)
  end

  test "should get index" do
    get feedbacks_url, as: :json
    assert_response :success
  end

  test "should create feedback" do
    assert_difference("Feedback.count") do
      post feedbacks_url, params: { feedback: { assessment_id: @feedback.assessment_id, feedback_text: @feedback.feedback_text, student_kata_attempt_id: @feedback.student_kata_attempt_id, user_id: @feedback.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show feedback" do
    get feedback_url(@feedback), as: :json
    assert_response :success
  end

  test "should update feedback" do
    patch feedback_url(@feedback), params: { feedback: { assessment_id: @feedback.assessment_id, feedback_text: @feedback.feedback_text, student_kata_attempt_id: @feedback.student_kata_attempt_id, user_id: @feedback.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy feedback" do
    assert_difference("Feedback.count", -1) do
      delete feedback_url(@feedback), as: :json
    end

    assert_response :no_content
  end
end
