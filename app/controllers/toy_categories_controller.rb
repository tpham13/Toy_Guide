class ToyCategoriesController < ApplicationController
  before_action :set_toy_category, only: [:show, :update, :destroy]

  # GET /toy_categories
  def index
    @toy_categories = ToyCategory.all

    render json: @toy_categories
  end

  # GET /toy_categories/1
  def show
    render json: @toy_category
  end

  # POST /toy_categories
  def create
    @toy_category = ToyCategory.new(toy_category_params)

    if @toy_category.save
      render json: @toy_category, status: :created, location: @toy_category
    else
      render json: @toy_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /toy_categories/1
  def update
    if @toy_category.update(toy_category_params)
      render json: @toy_category
    else
      render json: @toy_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /toy_categories/1
  def destroy
    @toy_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy_category
      @toy_category = ToyCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def toy_category_params
      params.require(:toy_category).permit(:name)
    end
end
