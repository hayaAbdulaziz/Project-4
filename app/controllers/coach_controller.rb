class CoachController < ApplicationController
    
    def index
        @coachs = Coach.all
    end

    def show
        @coach = Coach.find(params[:id])
    end
end
