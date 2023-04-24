require "test_helper"

class StudentAssessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_assessment = student_assessments(:one)
  end

  test "should get index" do
    get student_assessments_url, as: :json
    assert_response :success
  end

  test "should create student_assessment" do
    assert_difference("StudentAssessment.count") do
      post student_assessments_url, params: { student_assessment: { assessment_id: @student_assessment.assessment_id, overallgrade: @student_assessment.overallgrade, student_kata_attempt_id: @student_assessment.student_kata_attempt_id, user_id: @student_assessment.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show student_assessment" do
    get student_assessment_url(@student_assessment), as: :json
    assert_response :success
  end

  test "should update student_assessment" do
    patch student_assessment_url(@student_assessment), params: { student_assessment: { assessment_id: @student_assessment.assessment_id, overallgrade: @student_assessment.overallgrade, student_kata_attempt_id: @student_assessment.student_kata_attempt_id, user_id: @student_assessment.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy student_assessment" do
    assert_difference("StudentAssessment.count", -1) do
      delete student_assessment_url(@student_assessment), as: :json
    end

    assert_response :no_content
  end
end
