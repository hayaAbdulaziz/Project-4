class ExercisesController < ApplicationController
    def index
        @exercises = Exercise.all  
    end

    def show
        @exercise = Exercise.find(params[:id])
      end

      def new
        @exercise = Exercise.new
      end

      def edit
        @exercise = Exercise.find(params[:id])
      end
      
      def create
        @exercise = Exercise.new(exercise_params)
    
        @exercise.save
    
        redirect_to @exercise
      end

     def update
        @exercise = Exercise.find(params[:id])

        @exercise.update(exercise_params)

        redirect_to  @exercise
        
        end

      private

      def exercise_params
        params.require(:exercise).permit(:name, :explain, :img)
      end
end
