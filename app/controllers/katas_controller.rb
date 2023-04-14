class KatasController < ApplicationController
    before_action :authorize_tm, only: [:create, :destroy]


    #GET /katas
    def index
        katas = Kata.all
        render json: katas

    end
    #GET /katas:id
    def show
        kata = Kata.find(params[:id])
        render json: kata


    end
    # PATCH/PUT /katas/1
     def update
        if kata.update(kata_params)
            render json: kata
        else
            render json: kata.errors, status: :unprocessable_entity
        end
    end
    #POST /katas
    def create
            kata = Kata.create(kata_params)
        if kata.valid?
            render json: { status: :created, kata: kata }
        else
             render json: { errors: kata.errors.full_messages }, status: :unprocessable_entity
        end
    end

    #DELETE /kata
    def destroy
        kata = Kata.find(params[:id])
        kata.destroy
        render json: { status: :ok, message: "Kata deleted" }

    end
    private
    def authorize_tm
        unless current_user && current_user.userType == "TM"
          render json: { error: 'Unauthorized' }, status: :unauthorized
        end
    end
    def kata_params
        params.permit(:id, :name, :slug, :url, :category, :description, :tags, :languages, :rank)
    end
end
