class CoachesController < ApplicationController
  def index
    @coaches = Coach.all  
end

def show 
  @coach = Coach.find(params[:id])
  @exercises  = @coach.exercises 
end 

def new
  @coach = Coach.new
end

def edit
  @coach = Coach.find(params[:id])
end

def create

@coach = Coach.new(coach_params)
@coach.save
redirect_to @coach

end
def update
  @coach = Coach.find(params[:id])

  @coach.update(coach_params)

  redirect_to  @coach
  
  end

def destroy
  @coach = Coach.find(params[:id]).delete

  redirect_to coaches_path
end

private

def coach_params
  params.require(:coach).permit(:name, :specialty)
end
end
