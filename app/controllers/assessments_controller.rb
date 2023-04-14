class AssessmentsController < ApplicationController
    before_action :authorize_tm, only: [:create, :destroy, :update]

    #GET /assessments
    def index
        assessments = Assessment.all
        render json: assessments
    end

    #GET /assessment
    def show
        assessment = Assessment.find_by(id: params[:id])
        render json: assessment
    end
    #UPDATE /assessments
    def update
        if assessment.update(assesment_params)
            render json: assessment
        else
            render json: assessment.errors, status: :unprocessable_entity
        end
    end
    #POST /assessments
    def create
            assessment = assessment.create(assesment_params)
        if kata.valid?
         render json: { status: :created, assessment: assessment }
        else
         render json: { errors: assessment.errors.full_messages }, status: :unprocessable_entity
        end
    end
 private
    def authorize_tm
        unless current_user && current_user.userType == "TM"
            render json: { error: 'Unauthorized' }, status: :unauthorized
        end
    end
    def assesment_params
        params.permit(:id, :title, :duration)
    end

end
