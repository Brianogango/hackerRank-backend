class AssessmentsController < ApplicationController
    # before_action :authorize_tm, only: [:create, :destroy, :update]
      skip_before_action :authorized, only: [:create, :show, :index,:destroy]

    #GET /assessments
    def index
        assessments = Assessment.all
        render json: assessments
    end

  #    def show
  #   assessments = Assessment.where(userId: params[:userId])
  #   render json: assessments
  # end
    #GET /assessment
    def show
        assessment = Assessment.find_by(id: params[:id])
        render json: assessment
    end
    # #UPDATE /assessments
    def update
        if assessment.update(assesment_params)
            render json: assessment
        else
            render json: assessment.errors, status: :unprocessable_entity
        end
    end
    #POST /assessments
   def create
  assessment = Assessment.create(assessment_params)
  if assessment.valid?
    render json: { status: :created, assessment: assessment }
  else
    render json: { errors: assessment.errors.full_messages }, status: :unprocessable_entity
  end
end
 def destroy
  assessment = Assessment.find(params[:id])
  if assessment.destroy
    render json: { message: "assessment and associated katas deleted" }, status: :ok
  else
    render json: { error: "Unable to delete assessment" }, status: :unprocessable_entity
  end
end
 private
    def authorize_tm
        unless current_user && current_user.userType == "TM"
            render json: { error: 'Unauthorized' }, status: :unauthorized
        end
    end
    def assessment_params
        params.permit(:title, :duration, :userId)
    end

end
