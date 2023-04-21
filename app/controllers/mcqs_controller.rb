class McqsController < ApplicationController
  before_action :set_mcq, only: %i[ show update destroy ]

  # GET /mcqs
  def index
    # @mcqs = Mcq.all

    # render json: @mcqs
    @mcqs = Mcq.includes(:answers)

  render json: @mcqs.as_json(include: :answers)
  end

  # GET /mcqs/1
  def show
    render json: @mcq
  end

  # POST /mcqs
  def create
    @mcq = Mcq.new(mcq_params)

    if @mcq.save
      render json: @mcq, status: :created, location: @mcq
    else
      render json: @mcq.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mcqs/1
  def update
    if @mcq.update(mcq_params)
      render json: @mcq
    else
      render json: @mcq.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mcqs/1
  def destroy
    @mcq.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mcq
      @mcq = Mcq.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mcq_params
      params.require(:mcq).permit(:assessment_id, :question_text)
    end
end
