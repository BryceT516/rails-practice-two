class Api::V1::UsersController < ApplicationController
  
  # GET /users
  def index
    @users = User.all
    render json: @users
  end
  
  # GET /user/:id
  def show
    @user = User.find(params[:id])
    render json: @user
  end
  
  private
  

end
