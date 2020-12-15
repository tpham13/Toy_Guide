class Api::V1::ToysController < ApplicationController
    def index
        @toys = Toy.all
        render json: @toys
    end

    def create
        @toy = Toy.new(toy_params)
    
        if @toy.save
          render json: @toy, status: :accepted
        else
          render json: {erros: @toy.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def toy_params
        params.require(:toy).permit(:title, :description, :price, :url, :toy_category_id)
    end
end
