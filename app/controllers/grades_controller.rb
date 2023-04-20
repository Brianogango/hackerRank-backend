class GradesController < ApplicationController
  before_action :set_grade, only: %i[ show update destroy ]
  before_action :authorize_tm, only: [:show, :create, :destroy, :tm_index]
  before_action :authorize_student, only: [:student_index]


  # GET /grades
  def student_index
    @grades = Grade.joins(:submission).where(submissions: { user_id: current_user.id })
    render json: @grades
  end

  #TM viewing all grades
  def tm_index
    @grades = Grade.all

    render json: @grades
  end
  # GET /grades/1
  def show
    render json: @grade
  end

  # POST /grades
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      render json: @grade, status: :created, location: @grade
    else
      render json: @grade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grades/1
  def update
    if @grade.update(grade_params)
      render json: @grade
    else
      render json: @grade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grades/1
  def destroy
    @grade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_params
      params.require(:grade).permit(:submission_id, :score)
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
