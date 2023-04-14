class AssessmentKatasController < ApplicationController
    before_action :authorize_tm, only: [:create, :destroy, :update]
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
        params.require(:assessment_kata).permit(:assessment_id, :kata_id)
      end
    
      def authorize_tm
        unless current_user && current_user.userType == 'TM'
          render json: { error: 'Unauthorized' }, status: :unauthorized
        end
      end

end
