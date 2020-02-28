class Api::V1::FactsController < ApplicationController
  before_action :find_fact, only: [:show, :update, :destroy]

  # GET /facts
  def index
    @facts = @user.facts.all

    render json: @facts
  end

  # GET /facts/1
  def show
    render json: @fact
  end

  # POST /facts
  def create
    @fact = Fact.new(fact_params)

    if @fact.save
      render json: @fact, status: :created, location: @fact
    else
      render json: @fact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /facts/1
  def update
    if @fact.update(fact_params)
      render json: @fact
    else
      render json: @fact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /facts/1
  def destroy
    if @fact
      @fact.destroy
      render json: { message: 'Fact successfully deleted.' }, status: 200
    else
      render json: { error: 'Unable to delete fact.' }, status: 400
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_fact
      @fact = @user.facts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fact_params
      params.require(:fact).permit(:user_id, :fact, :likes)
    end
end
