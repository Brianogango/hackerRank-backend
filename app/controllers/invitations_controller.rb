class InvitationsController < ApplicationController
  before_action :set_invitation, only: %i[ show update destroy ]
  before_action :authorize_tm, only: [:create, :destroy, :update, :tm_index]
  before_action :authorize_student, only: [:show, :student_index ]
# GET /invitations/student
def student_index
  @invitations = Invitation.where(email: current_user.email)
  render json: @invitations
end

# GET /invitations/tm
def tm_index
  @invitations = Invitation.all
  render json: @invitations.as_json(include: { assessment: { only: [:id, :title, :duration] } }, only: [:id, :status,:end_date,:note])
end
  
  # GET /invitations/1
  def show
    invitation = set_invitation
    render json: @invitation
  end

  # POST /invitations
  def create
    @invitation = Invitation.new(invitation_params)

    if @invitation.save
      render json: @invitation, status: :created, location: @invitation
    else
      render json: @invitation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invitations/1
  def update
    if @invitation.update(invitation_params)
      render json: @invitation
    else
      render json: @invitation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invitations/1
  def destroy
    @invitation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitation
      @invitation = Invitation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invitation_params
      params.require(:invitation).permit(:assessment_id, :user_id, :status, :note, :email, :end_date)
    end
    def authorize_tm
      unless current_user && current_user.userType == "TM"
          render json: { error: 'Unauthorized ' }, status: :unauthorized
      end
  end
  def authorize_student
    unless current_user && current_user.userType == "student"
        render json: { error: 'Unauthorized ' }, status: :unauthorized
    end
end
end
