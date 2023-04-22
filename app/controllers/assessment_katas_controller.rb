class AssessmentKatasController < ApplicationController
  before_action :authorize_tm, only: [:create, :destroy, :update]
  skip_before_action :authorized, only: [:create, :show, :index]

  def index
    assessment_katas = AssessmentKata.all
    render json: assessment_katas
  end

  def create
    assessment_kata = AssessmentKata.new(assessment_kata_params)

    if assessment_kata.save
      render json: { assessment_kata: assessment_kata }, status: :created
    else
      render json: { error: assessment_kata.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    assessment_kata = AssessmentKata.find(params[:id])

    if assessment_kata.destroy
      head :no_content
    else
      render json: { error: assessment_kata.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def current_user
    if request.headers['Authorization']
      token = request.headers['Authorization'].split(' ')[1]
      decoded_token = JWT.decode(token, ENV['JWT_SECRET_KEY'], true, algorithm: 'HS256')[0]
      user_id = decoded_token['user_id']
      User.find(user_id)
    end
  end

  def update
    assessment_kata = AssessmentKata.find(params[:id])

    if assessment_kata.update(assessment_kata_params)
      render json: { assessment_kata: assessment_kata }
    else
      render json: { error: assessment_kata.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def assessment_kata_params
    params.permit(:assessment_id, :kata_id)
  end

  def authorize_tm
    unless current_user && current_user.userType == 'TM'
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
end
