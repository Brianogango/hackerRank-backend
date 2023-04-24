class StudentKataAttemptsController < ApplicationController
  before_action :set_student_kata_attempt, only: %i[ show update destroy ]

  # GET /student_kata_attempts
  def index
    @student_kata_attempts = StudentKataAttempt.all

    render json: @student_kata_attempts
  end

  # GET /student_kata_attempts/1
  def show
    render json: @student_kata_attempt
  end

  # POST /student_kata_attempts
  def create
    @student_kata_attempt = StudentKataAttempt.new(student_kata_attempt_params)

    if @student_kata_attempt.save
      render json: @student_kata_attempt, status: :created, location: @student_kata_attempt
    else
      render json: @student_kata_attempt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_kata_attempts/1
  def update
    if @student_kata_attempt.update(student_kata_attempt_params)
      render json: @student_kata_attempt
    else
      render json: @student_kata_attempt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_kata_attempts/1
  def destroy
    @student_kata_attempt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_kata_attempt
      @student_kata_attempt = StudentKataAttempt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_kata_attempt_params
      params.require(:student_kata_attempt).permit(:kata_id, :user_id, :grade, :code)
    end
end
