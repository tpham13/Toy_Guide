class ToysController < ApplicationController
    
    def create
    end 

    def index
        @toys = Toy.all 
        render json: @toys
    end 
    
    def update
    end 

    def destroy
    end 
    
end
