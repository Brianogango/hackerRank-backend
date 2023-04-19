class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

  # GET /users
  def index
    users = User.all
    render json: users
  end

  # GET /users/:id
 def show

end

 #  POST /user
    def create
        puts "User type value: #{params[:userType]}"
        user = User.create(user_params)
        if user.valid?
            render json: {status: :created, "success": "User saved successfully!"}
        else
            render json: {"errors": ["Validation errors"]}, status: :unprocessable_entity
        end
    end

  # PATCH/PUT /users/1

def update
  user = User.find(params[:id])
  if user
    user.update(user_params)
    render json: {status: :accepted, user: user}
  else
    render json: {error:"Unable to update user"}, status: :unprocessable_entity
  end
end

  # DELETE /users/:id
  def destroy
 
end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
       params.permit(:username, :email, :password, :userType)
    end
end
