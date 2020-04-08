class ExercisesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :index, :destroy, :update, :edit]

  before_action :find_exercise, only: [:show, :edit, :update, :destroy]

  # Show all exercises
    def index
    @exercises = current_user.exercises.all  
      
    end
    # To view one exercises
    def show
    if @exercise.user != current_user
    flash[:notice] = "Not Allowed!"
    redirect_to exercises_path
    end
    end
    # To create a new exercise
    def new
    @exercise = Exercise.new
      end
    # To edit a exercise
    def edit
    @exercise = Exercise.find(params[:id])
    end

    # To create a new exercise
    def create
    @exercise = Exercise.new(exercise_params)
    @exercise.user = current_user 
       
    if @exercise.save
    redirect_to @exercise
    else 
    puts "else"
    render :new
    end 

    end

   # To update a exercise

    def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)
    redirect_to  @exercise
        
    end
  # To Delete a exercise
    def destroy
    @exercise = Exercise.find(params[:id]).delete
    redirect_to exercises_path
     end
   
   private
   def exercise_params
   params.require(:exercise).permit(:name, :explain, :img, :coach_id)
   end
       
   # To find exercise a exercise
    def find_exercise
    @exercise = Exercise.find(params[:id])
    end
end
