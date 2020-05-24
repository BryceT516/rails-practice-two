class Api::V1::UsersController < ApplicationController
  
  # GET /users
  def index
    @users = User.all
    render json: @users
  end
  
  # GET /users/:id
  def show
    if (params[:id])
      render json: User.find(params[:id])
    else
      render json: @user
    end
  end
  
  private
  

end
