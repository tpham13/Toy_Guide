class Api::V1::ToyCategoriesController < ApplicationController

        before_action :set_toy_category, only: [:show]
      
        # GET /toy_categories
    def index
        @toy_categories = ToyCategory.all
        render json: ToyCategorySerializer.new(@toy_categories).serializable_hash[:data].map{|hash| hash[:attributes]}
    end
      
    # GET /toy_categories/1
    def show
      # byebug
      render json: { 
          id: params[:id],
          toysAttributes: ToyCategorySerializer.new(@toy_category, include: [:toys]).serializable_hash[:included].map{|hash| hash[:attributes]}
      }
      # render json: @toy_category
    end
      
    # POST /toy_categories
    def create
      @toy_category = ToyCategory.new(toy_category_params)
      
      if @toy_category.save
        render json: ToyCategorySerializer.new(@toy_category)
        # status: :created, location: @toy_category
      else
        render json: @toy_category.errors.full_messages.to_sentence, status: :unprocessable_entity
      end
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
