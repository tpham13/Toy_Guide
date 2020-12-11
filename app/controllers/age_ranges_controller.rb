class AgeRangesController < ApplicationController
    
    def index
        @age_ranges = AgeRange.all
        render json: @age_ranges
    end 

    def create
        @age_range = AgeRange.create
    end

    def destroy
    end 

end
