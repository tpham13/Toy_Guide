class Api::V1::ToysController < ApplicationController
  before_action :set_toy, only: [:show, :update, :destroy]

    def index
        toys = Toy.all
        #the next line of code is if we only want to show the data structure for toys
          # render json: @toys
        #this next line of codes is if we want to show the toys and its association with toy_category (and toy_category attributes).This will specify "relationship:"
          # @options = {
          #   include: [:toy_category]
          # }
          # render json: ToySerializer.new(@toys, @options)
        #to keep things simple, we'll just going to show toys and its association to toy_category(with toy_category attributes). This will not specify "relationship:"
        render json: ToySerializer.new(toys)
    end

    def create
        @toy = Toy.new(toy_params)
        # byebug
    
        if @toy.save
          render json: ToySerializer.new(@toy).serializable_hash[:data][:attributes]
        else
          render json: {errors: @toy.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end
    # GET /toys/1
    def show
      render json: ToySerializer.find(@toy)
    end
    # PATCH/PUT /toys/1
    def update
      if @toy.update(toy_params)
        render json: @toy
      else
        render json: @toy.errors, status: :unprocessable_entity
      end
    end

    # DELETE /toys/1
    def destroy
      @toy.destroy
    end
    private

    def set_toy
      @toy = Toy.find(params[:id])
    end

    def toy_params
        params.require(:toy).permit(:title, :description, :price, :url, :toy_category_id)
    end
end
