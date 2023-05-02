require "test_helper"

class StudentKataAttemptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_kata_attempt = student_kata_attempts(:one)
  end

  test "should get index" do
    get student_kata_attempts_url, as: :json
    assert_response :success
  end

  test "should create student_kata_attempt" do
    assert_difference("StudentKataAttempt.count") do
      post student_kata_attempts_url, params: { student_kata_attempt: { code: @student_kata_attempt.code, grade: @student_kata_attempt.grade, kata_id: @student_kata_attempt.kata_id, user_id: @student_kata_attempt.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show student_kata_attempt" do
    get student_kata_attempt_url(@student_kata_attempt), as: :json
    assert_response :success
  end

  test "should update student_kata_attempt" do
    patch student_kata_attempt_url(@student_kata_attempt), params: { student_kata_attempt: { code: @student_kata_attempt.code, grade: @student_kata_attempt.grade, kata_id: @student_kata_attempt.kata_id, user_id: @student_kata_attempt.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy student_kata_attempt" do
    assert_difference("StudentKataAttempt.count", -1) do
      delete student_kata_attempt_url(@student_kata_attempt), as: :json
    end

    assert_response :no_content
  end
end
