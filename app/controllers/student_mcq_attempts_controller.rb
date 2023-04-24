class StudentMcqAttemptsController < ApplicationController
  before_action :set_student_mcq_attempt, only: %i[ show update destroy ]

  # GET /student_mcq_attempts
  def index
    @student_mcq_attempts = StudentMcqAttempt.all

    render json: @student_mcq_attempts
  end

  # GET /student_mcq_attempts/1
  def show
    render json: @student_mcq_attempt
  end

  # POST /student_mcq_attempts
  def create
    @student_mcq_attempt = StudentMcqAttempt.new(student_mcq_attempt_params)

    if @student_mcq_attempt.save
      render json: @student_mcq_attempt, status: :created, location: @student_mcq_attempt
    else
      render json: @student_mcq_attempt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_mcq_attempts/1
  def update
    if @student_mcq_attempt.update(student_mcq_attempt_params)
      render json: @student_mcq_attempt
    else
      render json: @student_mcq_attempt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_mcq_attempts/1
  def destroy
    @student_mcq_attempt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_mcq_attempt
      @student_mcq_attempt = StudentMcqAttempt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_mcq_attempt_params
      params.require(:student_mcq_attempt).permit(:student_assessment_id, :mcq_id, :answer_id, :user_id)
    end
end
