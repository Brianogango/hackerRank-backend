require "test_helper"

class StudentMcqAttemptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_mcq_attempt = student_mcq_attempts(:one)
  end

  test "should get index" do
    get student_mcq_attempts_url, as: :json
    assert_response :success
  end

  test "should create student_mcq_attempt" do
    assert_difference("StudentMcqAttempt.count") do
      post student_mcq_attempts_url, params: { student_mcq_attempt: { answer_id: @student_mcq_attempt.answer_id, mcq_id: @student_mcq_attempt.mcq_id, student_assessment_id: @student_mcq_attempt.student_assessment_id, user_id: @student_mcq_attempt.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show student_mcq_attempt" do
    get student_mcq_attempt_url(@student_mcq_attempt), as: :json
    assert_response :success
  end

  test "should update student_mcq_attempt" do
    patch student_mcq_attempt_url(@student_mcq_attempt), params: { student_mcq_attempt: { answer_id: @student_mcq_attempt.answer_id, mcq_id: @student_mcq_attempt.mcq_id, student_assessment_id: @student_mcq_attempt.student_assessment_id, user_id: @student_mcq_attempt.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy student_mcq_attempt" do
    assert_difference("StudentMcqAttempt.count", -1) do
      delete student_mcq_attempt_url(@student_mcq_attempt), as: :json
    end

    assert_response :no_content
  end
end
