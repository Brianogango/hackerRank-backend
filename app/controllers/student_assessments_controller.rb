class StudentAssessmentsController < ApplicationController
  before_action :set_student_assessment, only: %i[ show update destroy ]
  before_action :authorize_tm, only: [:create, :destroy, :update, :tm_index]
  before_action :authorize_student, only: [:show, :student_index ]
  # GET /student_assessments
  def student_index
    @student_assessments = StudentAssessment.where(user_id: current_user.id)

    render json: @student_assessments
  end
  def tm_index
    @student_assessments = StudentAssessment.all

    render json: @student_assessments
  end
  # GET /student_assessments/1
  def show
    render json: @student_assessment
  end

  # POST /student_assessments
  def create
    @student_assessment = StudentAssessment.new(student_assessment_params)

    if @student_assessment.save
      render json: @student_assessment, status: :created, location: @student_assessment
    else
      render json: @student_assessment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_assessments/1
  def update
    if @student_assessment.update(student_assessment_params)
      render json: @student_assessment
    else
      render json: @student_assessment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_assessments/1
  def destroy
    @student_assessment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_assessment
      @student_assessment = StudentAssessment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_assessment_params
      params.require(:student_assessment).permit(:user_id, :assessment_id, :overallgrade, :student_kata_attempt_id)
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
