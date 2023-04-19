class SubmissionsController < ApplicationController
  before_action :set_submission, only: %i[ show update destroy ]
  before_action :authorize_tm, only: [:show, :tm_index]
  before_action :authorize_student, only: [:create, :destroy, :student_index]

  # GET /submissions
  # def index
  #   @submissions = Submission.all

  #   render json: @submissions
  # end
  def student_index 
    current_user.userType == "student"
      @submissions = Submission.where(user_id: current_user.id)
      render json: @submissions
  end
  
  # GET /invitations/tm
  def tm_index
    current_user.userType == "TM"
    @submissions = Submission.all
    render json: @submissions
    
  end
 

  # GET /submissions/1
  def show
    render json: @submission
  end

  # POST /submissions
  
  def create
    @submission = current_user.submissions.new(submission_params)
  
    if @submission.save
      render json: @submission, status: :created, location: @submission
    else
      render json: @submission.errors, status: :unprocessable_entity
    end
  end
  

  # PATCH/PUT /submissions/1
  def update
    if @submission.update(submission_params)
      render json: @submission
    else
      render json: @submission.errors, status: :unprocessable_entity
    end
  end

  # DELETE /submissions/1
  def destroy
    @submission.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def submission_params
      params.require(:submission).permit(:user_id, :assessment_id, :kata_id, :code, :result)
    end

    def authorize_tm
      unless current_user && current_user.userType == "TM"
          render json: { error: 'Unauthorized 2' }, status: :unauthorized
      end
  end
  def authorize_student
    unless current_user && current_user.userType == "student"
        render json: { error: 'Unauthorized 1' }, status: :unauthorized
    end
end
end
