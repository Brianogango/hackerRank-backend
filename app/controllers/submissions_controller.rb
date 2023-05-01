class SubmissionsController < ApplicationController
    def create
    submission = Submission.new(submission_params)
    if submission.save
      render json: submission, status: :created
    else
      render json: submission.errors, status: :unprocessable_entity
    end
  end
 def index
    assessment = Assessment.find(params[:assessment_id])
    submissions = assessment.submissions
    render json: submissions
  end

def show
  submissions = Submission.where(assessment_id: params[:id])
  render json: submissions
end

  private

  def submission_params
    params.require(:submission).permit(:user_id, :assessment_id, :kata_id, :code, :result, :percentage)
  end
end
