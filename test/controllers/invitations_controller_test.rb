require "test_helper"

class InvitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invitation = invitations(:one)
  end

  test "should get index" do
    get invitations_url, as: :json
    assert_response :success
  end

  test "should create invitation" do
    assert_difference("Invitation.count") do
      post invitations_url, params: { invitation: { assessment_id: @invitation.assessment_id, email: @invitation.email, end_date: @invitation.end_date, note: @invitation.note, status: @invitation.status, user_id: @invitation.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show invitation" do
    get invitation_url(@invitation), as: :json
    assert_response :success
  end

  test "should update invitation" do
    patch invitation_url(@invitation), params: { invitation: { assessment_id: @invitation.assessment_id, email: @invitation.email, end_date: @invitation.end_date, note: @invitation.note, status: @invitation.status, user_id: @invitation.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy invitation" do
    assert_difference("Invitation.count", -1) do
      delete invitation_url(@invitation), as: :json
    end

    assert_response :no_content
  end
end
