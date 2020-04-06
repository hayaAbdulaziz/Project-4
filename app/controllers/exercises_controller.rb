class ExercisesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :index, :destroy, :update, :edit]

  before_action :find_exercise, only: [:show, :edit, :update, :destroy]

    def index
        @exercises = current_user.exercises.all  
    end

    def show
       
    if @exercise.user != current_user
      flash[:notice] = "Not Allowed!"
        redirect_to exercises_path
      end

    
    
      end

      def new
        @exercise = Exercise.new
      end

      def edit
        @exercise = Exercise.find(params[:id])
      end
      
      def create
        @exercise = Exercise.new(exercise_params)
        @exercise.user = current_user
    
       if @exercise.save
        redirect_to @exercise
       else 
        render :new
       end 

      end

     def update
        @exercise = Exercise.find(params[:id])

        @exercise.update(exercise_params)

        redirect_to  @exercise
        
        end

        def destroy
            @exercise = Exercise.find(params[:id]).delete
        
            redirect_to exercises_path
          end

      private

      def exercise_params
        params.require(:exercise).permit(:name, :explain, :img)
      end

      def find_exercise
        @exercise = Exercise.find(params[:id])
    end
end
